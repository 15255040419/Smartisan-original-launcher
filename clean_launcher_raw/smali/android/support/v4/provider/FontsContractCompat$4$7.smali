.class Landroid/support/v4/provider/FontsContractCompat$4$7;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/FontsContractCompat$4;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$4;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iput p2, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iget-object v0, v0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iget p0, p0, Landroid/support/v4/provider/FontsContractCompat$4$7;->val$resultCode:I

    invoke-virtual {v0, p0}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
