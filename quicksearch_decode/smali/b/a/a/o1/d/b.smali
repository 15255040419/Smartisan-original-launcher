.class public Lb/a/a/o1/d/b;
.super Lb/a/a/o1/d/a;
.source "ViewHolderApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/o1/d/b$b;
    }
.end annotation


# static fields
.field public static final k:Landroid/net/Uri;


# instance fields
.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Lb/a/a/o1/c/b;

.field public i:Lb/a/a/o1/b/a;

.field public j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.smartisanos.launcher.exportprovider"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb/a/a/o1/d/b;->k:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/o1/d/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Lb/a/a/o1/c/b;->a(Landroid/content/Context;)Lb/a/a/o1/c/b;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/b;->h:Lb/a/a/o1/c/b;

    const p1, 0x7f080238

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/a;->a:Landroid/widget/TextView;

    const p1, 0x7f080159

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/b;->d:Landroid/widget/TextView;

    const p1, 0x7f080101

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lb/a/a/o1/d/b;->e:Landroid/widget/ImageView;

    const p1, 0x7f08011c

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/b;->f:Landroid/view/View;

    const p1, 0x7f0800de

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lb/a/a/o1/d/b;->g:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lb/a/a/o1/d/b;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lb/a/a/o1/d/b;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Landroid/content/ComponentName;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applications"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    return-object v0

    :cond_3
    const/4 v1, 0x0

    .line 24
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x1

    .line 25
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 27
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic a(Lb/a/a/o1/d/b;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lb/a/a/o1/d/b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/o1/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/o1/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 29
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "key_pkg_arraylist"

    .line 32
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    iget-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lb/a/a/o1/d/b;->k:Landroid/net/Uri;

    const-string v3, "get_folder_title_method"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "key_folder_title_arraylist"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method public final a()V
    .locals 3

    .line 12
    :try_start_0
    iget-object v0, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    iget-object v0, v0, Lb/a/a/o1/b/a;->a:Lsmartisanos/app/voiceassistant/ApplicationStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mStartUri:Landroid/net/Uri;

    invoke-static {v0}, Lb/a/a/o1/d/b;->a(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10200000

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    iget-object v0, v0, Lb/a/a/o1/b/a;->a:Lsmartisanos/app/voiceassistant/ApplicationStruct;

    iget v0, v0, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mAppIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v0, "show_tab_at"

    .line 17
    iget-object v2, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    iget-object v2, v2, Lb/a/a/o1/b/a;->a:Lsmartisanos/app/voiceassistant/ApplicationStruct;

    iget v2, v2, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mAppIndex:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    :cond_0
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "launchApp"

    .line 19
    invoke-static {v1, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/android/quicksearchbox/voice/model/IModel;Z)V
    .locals 2

    .line 3
    check-cast p2, Lb/a/a/o1/b/a;

    iput-object p2, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    .line 4
    iget-object p1, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    iget-object p1, p1, Lb/a/a/o1/b/a;->a:Lsmartisanos/app/voiceassistant/ApplicationStruct;

    .line 5
    iget-object p2, p0, Lb/a/a/o1/d/a;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lb/a/a/o1/d/b;->d:Landroid/widget/TextView;

    iget-object p3, p1, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mAppName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lsmartisanos/app/voiceassistant/ApplicationStruct;->getStartUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Lb/a/a/o1/d/b;->a(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p3, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {p3}, Lb/a/a/n1/h0;->l(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lb/a/a/o1/d/b;->j:Ljava/lang/String;

    .line 10
    new-instance p2, Lb/a/a/o1/d/b$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lb/a/a/o1/d/b$b;-><init>(Lb/a/a/o1/d/b;Lb/a/a/o1/d/b$a;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/o1/d/b;->j:Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11
    :cond_1
    iget-object p2, p0, Lb/a/a/o1/d/b;->h:Lb/a/a/o1/c/b;

    iget-object p1, p1, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lb/a/a/o1/d/b;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p1, p3}, Lb/a/a/o1/c/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08011c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/a/a/o1/d/b;->a()V

    .line 3
    iget-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/a/a/n1/d$o;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/quicksearchbox/BaseActivity;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/android/quicksearchbox/BaseActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    iget-object v0, v0, Lb/a/a/o1/b/a;->a:Lsmartisanos/app/voiceassistant/ApplicationStruct;

    iget-object v0, v0, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mStartUri:Landroid/net/Uri;

    invoke-static {v0}, Lb/a/a/o1/d/b;->a(Landroid/net/Uri;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lb/a/a/n1/d0;->b()Lb/a/a/n1/d0;

    move-result-object v1

    iget-object v4, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v2, p0, Lb/a/a/o1/d/b;->i:Lb/a/a/o1/b/a;

    iget-object v2, v2, Lb/a/a/o1/b/a;->a:Lsmartisanos/app/voiceassistant/ApplicationStruct;

    iget-object v6, v2, Lsmartisanos/app/voiceassistant/ApplicationStruct;->mAppName:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    .line 7
    invoke-virtual/range {v1 .. v7}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
