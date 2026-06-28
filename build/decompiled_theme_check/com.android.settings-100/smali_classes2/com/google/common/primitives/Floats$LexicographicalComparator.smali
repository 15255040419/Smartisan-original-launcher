.class final enum Lcom/google/common/primitives/Floats$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Floats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Floats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/Floats$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "[F>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Floats$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 376
    new-instance v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/primitives/Floats$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Floats$LexicographicalComparator;

    .line 375
    sget-object v2, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Floats$LexicographicalComparator;
    .locals 1

    .line 375
    const-class v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/Floats$LexicographicalComparator;
    .locals 1

    .line 375
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Floats$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Floats$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 375
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Floats$LexicographicalComparator;->compare([F[F)I

    move-result p0

    return p0
.end method

.method public compare([F[F)I
    .locals 3

    .line 380
    array-length p0, p1

    array-length v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 382
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Floats.lexicographicalComparator()"

    return-object p0
.end method
