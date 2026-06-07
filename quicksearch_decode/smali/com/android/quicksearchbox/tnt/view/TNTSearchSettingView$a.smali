.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;
.super Ljava/lang/Object;
.source "TNTSearchSettingView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->b:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyList"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->a:Ljava/util/List;

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->b:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->b:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V

    return-void
.end method
