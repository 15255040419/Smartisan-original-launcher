.class Lcom/smartisanos/launcher/d/g;
.super Ljava/lang/Object;
.source "SectorLayoutHandler.java"

# interfaces
.implements Lsmartisanos/widget/sectormenu/SectorLayoutCallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v0, 0x20000000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/d/h;->Mf()V

    return-void
.end method
