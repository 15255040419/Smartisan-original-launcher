.class Lcom/smartisanos/launcher/E;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/E;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/E;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p0}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/Aa;->n(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->He()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 7
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/z;

    .line 8
    iget v6, v5, Lcom/smartisanos/launcher/data/z;->Mk:I

    if-eq v6, v2, :cond_1

    if-ne v6, v1, :cond_3

    .line 9
    :cond_1
    iget-object v5, v5, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 11
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 12
    iget-wide v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 13
    invoke-static {v7, v8}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 14
    iget-object v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v7, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v3

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/view/Lc;->wO:I

    const/4 v3, -0x1

    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    sget v3, Lcom/smartisanos/launcher/ob;->confirm_sort_by_category_dialog_title_long_press:I

    goto :goto_2

    .line 21
    :cond_6
    sget v3, Lcom/smartisanos/launcher/ob;->confirm_sort_by_usage_dialog_title_long_press:I

    goto :goto_2

    .line 22
    :cond_7
    sget v3, Lcom/smartisanos/launcher/ob;->confirm_sort_by_install_dialog_title_long_press:I

    goto :goto_2

    .line 23
    :cond_8
    sget v3, Lcom/smartisanos/launcher/ob;->confirm_sort_by_color_dialog_title_long_press:I

    :goto_2
    const/4 v0, 0x0

    if-lez v3, :cond_9

    .line 24
    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v0

    .line 25
    :goto_3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/smengine/g;FLjava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/ec;->Np()I

    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/view/b/fa;->DQ:Lcom/smartisanos/launcher/view/ec;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/ec;->Qp()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 28
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    goto :goto_4

    .line 29
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->ya(I)V

    .line 30
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Qq()Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 32
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Lm()V

    goto :goto_5

    .line 33
    :cond_d
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/b/M;

    .line 36
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/M;->Lm()V

    goto :goto_6

    .line 37
    :cond_e
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Ch()Lcom/smartisanos/launcher/view/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/t;->ds()V

    .line 38
    :cond_f
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 39
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->Lm()V

    .line 40
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x800000

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void

    .line 41
    :cond_11
    :goto_7
    invoke-static {}, Lcom/smartisanos/launcher/J;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "onConfigurationChanged, main view is null !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method
