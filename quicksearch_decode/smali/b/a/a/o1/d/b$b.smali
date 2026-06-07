.class public Lb/a/a/o1/d/b$b;
.super Landroid/os/AsyncTask;
.source "ViewHolderApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/o1/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lb/a/a/o1/d/b;


# direct methods
.method public constructor <init>(Lb/a/a/o1/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/o1/d/b$b;->b:Lb/a/a/o1/d/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/o1/d/b;Lb/a/a/o1/d/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/o1/d/b$b;-><init>(Lb/a/a/o1/d/b;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    :goto_0
    iput-object p1, p0, Lb/a/a/o1/d/b$b;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lb/a/a/o1/d/b$b;->b:Lb/a/a/o1/d/b;

    iget-object v0, p0, Lb/a/a/o1/d/b$b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lb/a/a/o1/d/b;->a(Lb/a/a/o1/d/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lb/a/a/o1/d/b$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/o1/d/b$b;->b:Lb/a/a/o1/d/b;

    invoke-static {v1}, Lb/a/a/o1/d/b;->a(Lb/a/a/o1/d/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lb/a/a/o1/d/b$b;->b:Lb/a/a/o1/d/b;

    iget-object v0, v0, Lb/a/a/o1/d/b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb/a/a/o1/d/b$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb/a/a/o1/d/b$b;->a(Ljava/lang/String;)V

    return-void
.end method
