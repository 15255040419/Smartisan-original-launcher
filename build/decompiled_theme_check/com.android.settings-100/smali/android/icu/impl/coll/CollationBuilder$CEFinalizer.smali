.class final Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Landroid/icu/impl/coll/CollationDataBuilder$CEModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEFinalizer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private finalCEs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1326
    const-class v0, Landroid/icu/impl/coll/CollationBuilder;

    return-void
.end method

.method constructor <init>([J)V
    .locals 0

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    iput-object p1, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    return-void
.end method


# virtual methods
.method public modifyCE(J)J
    .locals 4

    .line 1342
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->access$200(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object p0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationBuilder;->access$300(J)I

    move-result v0

    aget-wide v0, p0, v0

    const-wide/32 v2, 0xc000

    and-long p0, p1, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide p0, 0x101000100L

    return-wide p0
.end method

.method public modifyCE32(I)J
    .locals 2

    .line 1333
    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object p0, p0, Landroid/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1}, Landroid/icu/impl/coll/CollationBuilder;->access$100(I)I

    move-result v0

    aget-wide v0, p0, v0

    and-int/lit16 p0, p1, 0xc0

    shl-int/lit8 p0, p0, 0x8

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0

    :cond_0
    const-wide p0, 0x101000100L

    return-wide p0
.end method
