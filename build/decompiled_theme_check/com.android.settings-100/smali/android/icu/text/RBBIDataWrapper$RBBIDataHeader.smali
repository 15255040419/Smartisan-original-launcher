.class final Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RBBIDataHeader"
.end annotation


# instance fields
.field fCatCount:I

.field fFTable:I

.field fFTableLen:I

.field fFormatVersion:[B

.field fLength:I

.field fMagic:I

.field fRTable:I

.field fRTableLen:I

.field fRuleSource:I

.field fRuleSourceLen:I

.field fSFTable:I

.field fSFTableLen:I

.field fSRTable:I

.field fSRTableLen:I

.field fStatusTable:I

.field fStatusTableLen:I

.field fTrie:I

.field fTrieLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fMagic:I

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 135
    iput-object v0, p0, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fFormatVersion:[B

    return-void
.end method
