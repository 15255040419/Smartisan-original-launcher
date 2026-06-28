.class Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/lifecycle/Lifecycle$1;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public onLifecycleEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 213
    sget-object p1, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "LifecycleObserver"

    const-string p1, "Should not receive an \'ANY\' event!"

    .line 233
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_0

    .line 221
    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    goto :goto_0

    .line 218
    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    :goto_0
    :pswitch_6
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
