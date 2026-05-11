.class Landroid/support/graphics/drawable/q;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# instance fields
.field mChangingConfigurations:I

.field mPathName:Ljava/lang/String;

.field protected sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/q;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 5
    iget-object v0, p1, Landroid/support/graphics/drawable/q;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/q;->mPathName:Ljava/lang/String;

    .line 6
    iget v0, p1, Landroid/support/graphics/drawable/q;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/q;->mChangingConfigurations:I

    .line 7
    iget-object p1, p1, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public I()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/q;->mPathName:Ljava/lang/String;

    return-object p0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object p0, p0, Landroid/support/graphics/drawable/q;->sc:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
