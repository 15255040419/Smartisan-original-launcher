.class Lcom/android/settings/widget/NationalFlagView$1;
.super Landroid/os/Handler;
.source "NationalFlagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/NationalFlagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/NationalFlagView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/NationalFlagView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/widget/NationalFlagView$1;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/NationalFlagView$1;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-static {v0}, Lcom/android/settings/widget/NationalFlagView;->access$000(Lcom/android/settings/widget/NationalFlagView;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/NationalFlagView$1;->this$0:Lcom/android/settings/widget/NationalFlagView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/android/settings/widget/NationalFlagView;->access$102(Lcom/android/settings/widget/NationalFlagView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object p1, p0, Lcom/android/settings/widget/NationalFlagView$1;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-static {p1}, Lcom/android/settings/widget/NationalFlagView;->access$000(Lcom/android/settings/widget/NationalFlagView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView$1;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-static {p0}, Lcom/android/settings/widget/NationalFlagView;->access$100(Lcom/android/settings/widget/NationalFlagView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
