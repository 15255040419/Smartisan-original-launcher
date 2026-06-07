.class public Lb/a/a/a0;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Lcom/android/quicksearchbox/IconLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a0$b;,
        Lb/a/a/a0$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lcom/android/quicksearchbox/util/NamedTaskExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/a0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/a/a/a0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lb/a/a/a0;->d:Landroid/os/Handler;

    .line 5
    iput-object p4, p0, Lb/a/a/a0;->e:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;FF)I
    .locals 3

    .line 45
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 46
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v0

    cmpl-float v1, v1, p2

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    int-to-float v1, p0

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1

    .line 47
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 48
    div-int/lit8 p0, p0, 0x2

    .line 49
    :goto_0
    div-int v1, v0, v2

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    div-int v1, p0, v2

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-lez v1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static synthetic a(Lb/a/a/a0;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/a0;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/a0;)Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/a0;->e:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object p0
.end method

.method public static synthetic b(Lb/a/a/a0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/a0;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c(Lb/a/a/a0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/a0;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 12

    const-string v0, "Error closing icon stream for "

    const-string v1, "QSB.PackageIconLoader"

    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.resource"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lb/a/a/a0;->b(Landroid/net/Uri;)Lb/a/a/a0$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 9
    :try_start_1
    iget-object v3, v0, Lb/a/a/a0$c;->a:Landroid/content/res/Resources;

    iget v0, v0, Lb/a/a/a0$c;->b:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    return-object p1

    .line 10
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a0;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    iget-object v3, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v3, :cond_6

    .line 13
    :try_start_3
    iget-object v4, p0, Lb/a/a/a0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06024c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 14
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    .line 15
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 16
    invoke-static {v3, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 17
    invoke-static {v5, v4, v4}, Lb/a/a/a0;->a(Landroid/graphics/BitmapFactory$Options;FF)I

    move-result v4

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    .line 18
    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 19
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 20
    iget-object v6, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 21
    invoke-static {v2, v2, v3, v2, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v5, :cond_2

    .line 22
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 23
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    :goto_0
    return-object v5

    .line 24
    :cond_2
    :try_start_6
    iget-object v5, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v5, "data15"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_4

    .line 25
    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 26
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    if-eqz v6, :cond_4

    .line 27
    array-length v7, v6

    if-eqz v7, :cond_4

    .line 28
    array-length v7, v6

    invoke-static {v6, v4, v7, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 29
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 30
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v6

    if-eqz v5, :cond_3

    .line 31
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_a
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v6

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catch_2
    move-exception v4

    .line 32
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 33
    :cond_5
    :goto_3
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    .line 34
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_5

    :catchall_3
    move-exception v4

    goto :goto_6

    :catch_4
    move-exception v4

    .line 35
    :try_start_e
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 36
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    .line 37
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_4

    :goto_5
    return-object v2

    .line 38
    :goto_6
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_7

    :catch_6
    move-exception v3

    .line 39
    :try_start_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_7
    throw v4

    .line 41
    :cond_6
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_7

    :catch_7
    move-exception v0

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/LauncherIconBridge;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_launcher_icon_fallback

    return-object v1

    :cond_launcher_icon_fallback
    iget-object v0, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final a()Z
    .locals 3

    .line 3
    iget-object v0, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lb/a/a/a0;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/a/a/a0;->b:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a0;->c:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.PackageIconLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/net/Uri;)Lb/a/a/a0$c;
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    :try_start_0
    iget-object v1, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 7
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Single path segment is not a resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    new-instance p1, Lb/a/a/a0$c;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lb/a/a/a0$c;-><init>(Lb/a/a/a0$a;)V

    .line 11
    iput-object v1, p1, Lb/a/a/a0$c;->a:Landroid/content/res/Resources;

    .line 12
    iput v0, p1, Lb/a/a/a0$c;->b:I

    return-object p1

    .line 13
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No resource found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than two path segments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 16
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/a/a/a0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance p1, Lb/a/a/n1/u;

    invoke-direct {p1, v1}, Lb/a/a/n1/u;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v2, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    new-instance v2, Lb/a/a/n1/u;

    invoke-direct {v2, v0}, Lb/a/a/n1/u;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon resource not found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.PackageIconLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v2, Lb/a/a/n1/u;

    invoke-direct {v2, v1}, Lb/a/a/n1/u;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :catch_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lb/a/a/n1/u;

    invoke-virtual {p0, p1}, Lb/a/a/a0;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/a/n1/u;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lb/a/a/a0$b;

    invoke-direct {v0, p0, p1}, Lb/a/a/a0$b;-><init>(Lb/a/a/a0;Landroid/net/Uri;)V

    :goto_0
    move-object v2, v0

    :goto_1
    return-object v2

    .line 13
    :cond_3
    :goto_2
    new-instance p1, Lb/a/a/n1/u;

    invoke-direct {p1, v1}, Lb/a/a/n1/u;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getIconUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/a/a/a0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lb/a/a/a0;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5
    :catch_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method
