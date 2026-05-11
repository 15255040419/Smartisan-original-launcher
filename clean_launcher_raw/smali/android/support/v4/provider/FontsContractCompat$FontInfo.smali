.class public Landroid/support/v4/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# instance fields
.field private final mItalic:Z

.field private final mResultCode:I

.field private final mTtcIndex:I

.field private final mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 3
    iput p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    .line 4
    iput p3, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 5
    iput-boolean p4, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 6
    iput p5, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mResultCode:I

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mResultCode:I

    return p0
.end method

.method public getTtcIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mWeight:I

    return p0
.end method

.method public isItalic()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->mItalic:Z

    return p0
.end method
