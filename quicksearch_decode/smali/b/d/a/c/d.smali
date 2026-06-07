.class public final Lb/d/a/c/d;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lb/d/a/c/d;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lb/d/a/c/d;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lb/d/a/c/d;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "/data/data/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string v0, "Can\'t define system cache directory! \'%s\' will be used."

    .line 6
    invoke-static {v0, p1}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "cache"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "Unable to create external cache directory"

    .line 5
    invoke-static {v0, p0}, Lb/d/a/c/b;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "Can\'t create \".nomedia\" file in application external cache directory"

    .line 7
    invoke-static {v0, p0}, Lb/d/a/c/b;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {p0}, Lb/d/a/c/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
