.class public Lsmartisanos/api/LayoutParamsSmt;
.super Ljava/lang/Object;
.source "LayoutParamsSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/LayoutParamsSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/LayoutParamsSmt;

    invoke-direct {v0}, Lsmartisanos/api/LayoutParamsSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/LayoutParamsSmt;->sInstance:Lsmartisanos/api/LayoutParamsSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/LayoutParamsSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/LayoutParamsSmt;->sInstance:Lsmartisanos/api/LayoutParamsSmt;

    return-object v0
.end method


# virtual methods
.method public add_smartisanPrivateFlag(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    return-void
.end method

.method public removeSmartisanPrivateFlag(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    return-void
.end method
