.class Landroid/support/graphics/drawable/n;
.super Landroid/support/graphics/drawable/q;
.source "VectorDrawableCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/graphics/drawable/q;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/n;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/q;-><init>(Landroid/support/graphics/drawable/q;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Landroid/support/graphics/drawable/q;->mPathName:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    :cond_1
    return-void
.end method


# virtual methods
.method public I()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "pathData"

    .line 1
    invoke-static {p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p4, Landroid/support/graphics/drawable/a;->ac:[I

    invoke-static {p1, p3, p2, p4}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/n;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
