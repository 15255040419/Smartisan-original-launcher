.class final enum Lcom/google/common/collect/Iterators$EmptyModifiableIterator;
.super Ljava/lang/Enum;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EmptyModifiableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/Iterators$EmptyModifiableIterator;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

.field public static final enum INSTANCE:Lcom/google/common/collect/Iterators$EmptyModifiableIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;->INSTANCE:Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    .line 95
    sget-object v2, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;->INSTANCE:Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;->$VALUES:[Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Iterators$EmptyModifiableIterator;
    .locals 1

    .line 95
    const-class v0, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/Iterators$EmptyModifiableIterator;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/common/collect/Iterators$EmptyModifiableIterator;->$VALUES:[Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    invoke-virtual {v0}, [Lcom/google/common/collect/Iterators$EmptyModifiableIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Iterators$EmptyModifiableIterator;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    .line 105
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 0

    const/4 p0, 0x0

    .line 110
    invoke-static {p0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    return-void
.end method
