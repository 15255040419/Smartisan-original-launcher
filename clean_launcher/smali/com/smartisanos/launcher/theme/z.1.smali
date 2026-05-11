.class Lcom/smartisanos/launcher/theme/z;
.super Landroid/os/AsyncTask;
.source "ThemeChooserActivity.java"


# instance fields
.field private Vb:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mLaunchMode:I

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/z;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/theme/z;->mLaunchMode:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/theme/z;->Vb:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/smartisanos/launcher/theme/z;->mContext:Landroid/content/Context;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/z;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getDefaultSingleMode()I

    move-result v0

    .line 7
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/theme/z;->mLaunchMode:I

    if-eqz p3, :cond_0

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 9
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/theme/v;

    .line 10
    iget-object p3, p0, Lcom/smartisanos/launcher/theme/z;->Vb:Ljava/util/List;

    iget-object p2, p2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 11
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 12
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/theme/v;

    .line 13
    iget-object p3, p0, Lcom/smartisanos/launcher/theme/z;->Vb:Ljava/util/List;

    iget-object p2, p2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/smartisanos/launcher/theme/u;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/z;->Vb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find theme by id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/smartisanos/launcher/theme/z;->mLaunchMode:I

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/theme/v;->ka(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/z;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/theme/v;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    .line 6
    aget-object v3, p1, v3

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lcom/smartisanos/launcher/theme/u;->b(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/smartisanos/launcher/theme/u;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/z;->a([Lcom/smartisanos/launcher/theme/u;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/z;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->b(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
