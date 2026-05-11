.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private mItalic:Z

.field private mResourceId:I

.field private mTtcIndex:I

.field private mVariationSettings:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    .line 4
    iput-boolean p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    .line 5
    iput-object p4, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    .line 6
    iput p5, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    .line 7
    iput p6, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return p0
.end method

.method public getTtcIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    return p0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    return p0
.end method

.method public isItalic()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    return p0
.end method
