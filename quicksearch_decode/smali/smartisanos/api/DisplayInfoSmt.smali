.class public Lsmartisanos/api/DisplayInfoSmt;
.super Ljava/lang/Object;
.source "DisplayInfoSmt.java"

.field private static final sInstance:Lsmartisanos/api/DisplayInfoSmt;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/DisplayInfoSmt;

    invoke-direct {v0}, Lsmartisanos/api/DisplayInfoSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/DisplayInfoSmt;->sInstance:Lsmartisanos/api/DisplayInfoSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/DisplayInfoSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/DisplayInfoSmt;->sInstance:Lsmartisanos/api/DisplayInfoSmt;

    return-object v0
.end method

.method public getSmLogicalHeight(Landroid/view/DisplayInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSmLogicalWidth(Landroid/view/DisplayInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
