.class public Lsmartisanos/api/BlurMaskFilterSmt;
.super Ljava/lang/Object;
.source "BlurMaskFilterSmt.java"


# static fields
.field private static final sInstance:Lsmartisanos/api/BlurMaskFilterSmt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/api/BlurMaskFilterSmt;

    invoke-direct {v0}, Lsmartisanos/api/BlurMaskFilterSmt;-><init>()V

    sput-object v0, Lsmartisanos/api/BlurMaskFilterSmt;->sInstance:Lsmartisanos/api/BlurMaskFilterSmt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/api/BlurMaskFilterSmt;
    .locals 1

    sget-object v0, Lsmartisanos/api/BlurMaskFilterSmt;->sInstance:Lsmartisanos/api/BlurMaskFilterSmt;

    return-object v0
.end method


# virtual methods
.method public newBlurMaskFilter(FLandroid/graphics/BlurMaskFilter$Blur;Landroid/graphics/BlurMaskFilter$Quality;)Landroid/graphics/BlurMaskFilter;
    .locals 1

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    return-object v0
.end method
