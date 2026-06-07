.class public Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;
.super Ljava/lang/Object;
.source "AppstoreSuggestionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

.field public final synthetic c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    .line 2
    iput-object p2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->e(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)I

    move-result v1

    const-string v2, "QSB.ASV"

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force change view state form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->e(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    iget v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;I)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget-wide v3, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->a:J

    iput-wide v3, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->a:J

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->d:I

    iput v1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->d:I

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->e:I

    iput v1, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->e:I

    .line 7
    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->f(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->f(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f1000cc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0, v3}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;I)I

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->f(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->f(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->f(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v0

    iget-object v5, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v5}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object v5

    iget v5, v5, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->e:I

    invoke-virtual {v0, v5}, Lsmartisan/widget/DownloadProgressView;->setProgress(I)V

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lsmartisan/widget/DownloadProgressView;->getCurrentState()I

    move-result v0

    .line 21
    iget v5, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    if-eq v5, v0, :cond_3

    .line 22
    iget-object v5, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v5}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v5

    iget v6, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    invoke-virtual {v5, v6}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change progress view state from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->a:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by DM status "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    iget v0, v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->d:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lb/a/a/n1/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;I)I

    .line 26
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    .line 27
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$e;->c:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->g(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lsmartisan/widget/DownloadProgressView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
