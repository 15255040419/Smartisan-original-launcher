.class public abstract Lb/a/a/o1/d/a;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/content/Context;

.field public c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/o1/d/a;->c:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lb/a/a/n1/o;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lb/a/a/n1/o;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object p2

    invoke-static {p2}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f05012e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0500ec

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    .line 6
    :goto_0
    invoke-virtual {v0}, Lb/a/a/n1/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public abstract a(Ljava/lang/String;Lcom/android/quicksearchbox/voice/model/IModel;Z)V
.end method
