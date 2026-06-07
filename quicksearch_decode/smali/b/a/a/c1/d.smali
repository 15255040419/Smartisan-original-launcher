.class public Lb/a/a/c1/d;
.super Ljava/lang/Object;
.source "Preconditions.java"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 7

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "search_application_suggestions"

    const/4 v3, 0x1

    .line 4
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sput-boolean v4, Lb/a/a/c1/d;->a:Z

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lb/a/a/c1/d$a;

    invoke-direct {v6, v0, p0}, Lb/a/a/c1/d$a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "search_popular_information"

    .line 6
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    sput-boolean v4, Lb/a/a/c1/d;->b:Z

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lb/a/a/c1/d$b;

    invoke-direct {v6, v0, v1}, Lb/a/a/c1/d$b;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "trigger_search_via_slide_up"

    .line 8
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    sput-boolean v4, Lb/a/a/c1/d;->c:Z

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v6, Lb/a/a/c1/d$c;

    invoke-direct {v6, v0, v1}, Lb/a/a/c1/d$c;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "search_history"

    .line 10
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    sput-boolean v3, Lb/a/a/c1/d;->d:Z

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lb/a/a/c1/d$d;

    invoke-direct {v3, v0, v1}, Lb/a/a/c1/d$d;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 12
    sget-boolean v0, Lb/a/a/c1/d;->c:Z

    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lb/a/a/c1/d;->a:Z

    return p0
.end method

.method public static b()Z
    .locals 1

    .line 2
    sget-boolean v0, Lb/a/a/c1/d;->d:Z

    return v0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lb/a/a/c1/d;->b:Z

    return p0
.end method

.method public static c()Z
    .locals 1

    .line 2
    sget-boolean v0, Lb/a/a/c1/d;->a:Z

    return v0
.end method

.method public static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lb/a/a/c1/d;->c:Z

    return p0
.end method

.method public static d()Z
    .locals 1

    .line 2
    sget-boolean v0, Lb/a/a/c1/d;->b:Z

    return v0
.end method

.method public static synthetic d(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lb/a/a/c1/d;->d:Z

    return p0
.end method
