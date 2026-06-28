.class Landroidx/core/provider/FontsContractCompat$4$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/FontsContractCompat$4;


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$4;)V
    .locals 0

    .line 549
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$4$1;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 552
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$4$1;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
