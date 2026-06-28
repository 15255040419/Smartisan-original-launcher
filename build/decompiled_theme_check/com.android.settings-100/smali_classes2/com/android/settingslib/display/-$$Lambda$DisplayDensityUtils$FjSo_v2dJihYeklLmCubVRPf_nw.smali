.class public final synthetic Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;->f$0:I

    iput p2, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;->f$0:I

    iget p0, p0, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;->f$1:I

    invoke-static {v0, p0}, Lcom/android/settingslib/display/DisplayDensityUtils;->lambda$clearForcedDisplayDensity$0(II)V

    return-void
.end method
