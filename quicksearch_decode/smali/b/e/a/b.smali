.class public Lb/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Lb/e/a/e/a;

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ro.debuggable"

    .line 1
    invoke-static {v1, v0}, Lb/e/a/d;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lb/e/a/b;->c:Z

    const-string v0, "content://com.smartisan.sailor.provider/user_mode_info/2"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb/e/a/e/a;
    .locals 3

    .line 1
    sget-object v0, Lb/e/a/b;->b:Lb/e/a/e/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lb/e/a/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lb/e/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Lb/e/a/e/a;

    invoke-direct {v2, v0, v1}, Lb/e/a/e/a;-><init>(Ljava/lang/String;Z)V

    sput-object v2, Lb/e/a/b;->b:Lb/e/a/e/a;

    .line 5
    :cond_1
    sget-object v0, Lb/e/a/b;->b:Lb/e/a/e/a;

    if-eqz v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-static {p0}, Lb/e/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Lb/e/a/e/a;

    invoke-direct {v0, p0, v1}, Lb/e/a/e/a;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lb/e/a/b;->b:Lb/e/a/e/a;

    .line 8
    sget-object p0, Lb/e/a/b;->b:Lb/e/a/e/a;

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 9
    sget-object v0, Lb/e/a/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lb/e/a/c;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lb/e/a/b;->a:Ljava/lang/Boolean;

    .line 11
    :cond_0
    sget-boolean v0, Lb/e/a/b;->c:Z

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSmartisanOS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lb/e/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMBaseApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    sget-object v0, Lb/e/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
