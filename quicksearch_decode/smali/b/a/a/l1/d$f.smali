.class public final Lb/a/a/l1/d$f;
.super Landroid/os/Handler;
.source "TNTSuggestionsListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d;-><init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/QueryFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/d;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/l1/d$f;->a:Lb/a/a/l1/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lb/a/a/l1/d$f;->a:Lb/a/a/l1/d;

    invoke-static {v1}, Lb/a/a/l1/d;->c(Lb/a/a/l1/d;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lb/a/a/l1/d$f;->a:Lb/a/a/l1/d;

    invoke-virtual {v0, p1}, Lb/a/a/l1/d;->b(Z)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
