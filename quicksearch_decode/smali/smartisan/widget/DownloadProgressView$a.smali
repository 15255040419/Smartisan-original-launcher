.class public Lsmartisan/widget/DownloadProgressView$a;
.super Ljava/lang/Object;
.source "DownloadProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/DownloadProgressView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/DownloadProgressView;


# direct methods
.method public constructor <init>(Lsmartisan/widget/DownloadProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/DownloadProgressView$a;->a:Lsmartisan/widget/DownloadProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView$a;->a:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lsmartisan/widget/DownloadProgressView;->a(Lsmartisan/widget/DownloadProgressView;I)I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/DownloadProgressView$a;->a:Lsmartisan/widget/DownloadProgressView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
