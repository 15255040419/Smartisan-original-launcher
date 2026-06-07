.class public Lcom/android/quicksearchbox/ui/SearchActivityView$n;
.super Landroid/os/AsyncTask;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lb/a/a/e1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$n;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/e1/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$n;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setHistoryInfo(Lb/a/a/e1/b;)V

    :cond_0
    return-void
.end method

.method public doInBackground([Ljava/lang/Object;)Lb/a/a/e1/b;
    .locals 7

    .line 2
    new-instance p1, Lb/a/a/e1/b;

    invoke-direct {p1}, Lb/a/a/e1/b;-><init>()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$n;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/quicksearchbox/data/QsbProvider;->c:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 5
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    const-string v1, "_id"

    .line 7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "content"

    .line 8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    .line 10
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 12
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 13
    new-instance v5, Lb/a/a/e1/b$b;

    invoke-direct {v5, v2, v3, v4}, Lb/a/a/e1/b$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$n;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    .line 15
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lb/a/a/n1/h0;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {p1, v5}, Lb/a/a/e1/b;->a(Lb/a/a/e1/b$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 18
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 19
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query history db exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$n;->doInBackground([Ljava/lang/Object;)Lb/a/a/e1/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/a/a/e1/b;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$n;->a(Lb/a/a/e1/b;)V

    return-void
.end method
