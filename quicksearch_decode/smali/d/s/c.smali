.class public final Ld/s/c;
.super Ld/s/a;
.source "Ranges.kt"

# interfaces
.implements Lkotlin/ranges/ClosedRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/s/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/s/a;",
        "Lkotlin/ranges/ClosedRange<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ld/s/c;

.field public static final f:Ld/s/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ld/s/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/s/c$a;-><init>(Ld/q/c/c;)V

    sput-object v0, Ld/s/c;->f:Ld/s/c$a;

    .line 1
    new-instance v0, Ld/s/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/s/c;-><init>(II)V

    sput-object v0, Ld/s/c;->e:Ld/s/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Ld/s/a;-><init>(III)V

    return-void
.end method

.method public static final synthetic b()Ld/s/c;
    .locals 1

    .line 1
    sget-object v0, Ld/s/c;->e:Ld/s/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/s/a;->getFirst()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Ld/s/a;->getLast()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ld/s/c;->a(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ld/s/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ld/s/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld/s/c;

    invoke-virtual {v0}, Ld/s/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ld/s/a;->getFirst()I

    move-result v0

    check-cast p1, Ld/s/c;

    invoke-virtual {p1}, Ld/s/a;->getFirst()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ld/s/a;->getLast()I

    move-result v0

    invoke-virtual {p1}, Ld/s/a;->getLast()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/s/c;->getEndInclusive()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getEndInclusive()Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ld/s/a;->getLast()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/s/c;->getStart()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStart()Ljava/lang/Integer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ld/s/a;->getFirst()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/s/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld/s/a;->getFirst()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ld/s/a;->getLast()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/s/a;->getFirst()I

    move-result v0

    invoke-virtual {p0}, Ld/s/a;->getLast()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ld/s/a;->getFirst()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld/s/a;->getLast()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
