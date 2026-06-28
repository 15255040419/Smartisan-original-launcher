.class Landroid/arch/lifecycle/g;
.super Ljava/lang/Object;
.source "FullLifecycleObserverAdapter.java"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field private final mObserver:Landroid/arch/lifecycle/e;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/arch/lifecycle/f;->aa:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ON_ANY must not been send by anybody"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    iget-object p0, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    invoke-interface {p0, p1}, Landroid/arch/lifecycle/e;->a(Landroid/arch/lifecycle/l;)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p0, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    invoke-interface {p0, p1}, Landroid/arch/lifecycle/e;->c(Landroid/arch/lifecycle/l;)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p0, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    invoke-interface {p0, p1}, Landroid/arch/lifecycle/e;->e(Landroid/arch/lifecycle/l;)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p0, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    invoke-interface {p0, p1}, Landroid/arch/lifecycle/e;->f(Landroid/arch/lifecycle/l;)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object p0, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    invoke-interface {p0, p1}, Landroid/arch/lifecycle/e;->d(Landroid/arch/lifecycle/l;)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object p0, p0, Landroid/arch/lifecycle/g;->mObserver:Landroid/arch/lifecycle/e;

    invoke-interface {p0, p1}, Landroid/arch/lifecycle/e;->b(Landroid/arch/lifecycle/l;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
