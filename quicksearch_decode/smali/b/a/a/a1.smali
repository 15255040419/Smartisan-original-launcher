.class public Lb/a/a/a1;
.super Ljava/lang/Object;
.source "VoiceSearch.java"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/a1;->a:Landroid/content/Context;

    return-void
.end method

.method public static c()Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lb/a/a/a1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lb/a/a/a1;->c()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "app_data"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public final a()Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 1
    invoke-static {}, Lb/a/a/a1;->c()Landroid/content/Intent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/a1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 3
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/a1;->a()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
