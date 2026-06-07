.class public final Lcom/android/quicksearchbox/tnt/TNTSearchActivity$mReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "TNTSearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/TNTSearchActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity$mReceiver$1;->a:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity$mReceiver$1;->a:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->a(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity$mReceiver$1;->a:Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f()V

    :cond_0
    return-void
.end method
