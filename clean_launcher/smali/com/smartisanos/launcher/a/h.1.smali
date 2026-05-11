.class public Lcom/smartisanos/launcher/a/h;
.super Ljava/lang/Object;
.source "ChangeThemeByFourFingerSlide.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/h;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/h;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/theme/v;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/a/e;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/e;-><init>()V

    const-wide/16 v1, 0x12c

    .line 2
    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/a/f;

    invoke-direct {v1}, Lcom/smartisanos/launcher/a/f;-><init>()V

    invoke-static {v1}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->ja(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/a/h;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "Store new theme to current failed"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/a/h;->l(Ljava/lang/Runnable;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/ja;->l(Z)V

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/launcher/ua;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/a/r;->b(Lcom/smartisanos/launcher/theme/v;)Z

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/h;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private static l(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/Sa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    new-instance p0, Lcom/smartisanos/launcher/a/g;

    invoke-direct {p0}, Lcom/smartisanos/launcher/a/g;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static t(Z)Z
    .locals 10

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/c;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/c;-><init>()V

    const-wide/16 v1, 0x12c

    .line 2
    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/a/d;

    invoke-direct {v1}, Lcom/smartisanos/launcher/a/d;-><init>()V

    invoke-static {v1}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->gg()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->u(Ljava/util/List;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 9
    iget-object v2, v2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/theme/v;

    if-nez v8, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v8}, Lcom/smartisanos/launcher/theme/v;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v4}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget-object v9, v8, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 15
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_3
    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 18
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v8, -0x1

    if-eq v1, v8, :cond_7

    if-eqz p0, :cond_5

    add-int/2addr v1, v5

    if-lt v1, v2, :cond_4

    .line 19
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 20
    :cond_4
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_5
    sub-int/2addr v1, v5

    if-gez v1, :cond_6

    sub-int/2addr v2, v5

    .line 21
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_6
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 23
    :cond_7
    :goto_1
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/v;

    if-eqz v1, :cond_b

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/launcher/theme/X;->ja(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 25
    sget-object p0, Lcom/smartisanos/launcher/a/h;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "Store new theme to current failed"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    invoke-static {v0}, Lcom/smartisanos/launcher/a/h;->l(Ljava/lang/Runnable;)V

    return v4

    .line 27
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v2

    if-eqz p0, :cond_9

    .line 28
    sget-object p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    goto :goto_2

    :cond_9
    sget-object p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 29
    :goto_2
    invoke-virtual {v2, p0}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 30
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v2, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/ja;->l(Z)V

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 34
    invoke-static {v1}, Lcom/smartisanos/launcher/a/r;->b(Lcom/smartisanos/launcher/theme/v;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 35
    invoke-static {v0}, Lcom/smartisanos/launcher/a/h;->l(Ljava/lang/Runnable;)V

    return v4

    :cond_a
    return v5

    .line 36
    :cond_b
    invoke-static {v0}, Lcom/smartisanos/launcher/a/h;->l(Ljava/lang/Runnable;)V

    .line 37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "find theme err"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_c
    :goto_3
    sget-object p0, Lcom/smartisanos/launcher/a/h;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerSlide return by theme count ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Lcom/smartisanos/launcher/a/h;->l(Ljava/lang/Runnable;)V

    return v4
.end method
