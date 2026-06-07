.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;
.super Ljava/lang/Object;
.source "TNTSearchContentView.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suggestions focus change, now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V

    :cond_1
    return-void
.end method
