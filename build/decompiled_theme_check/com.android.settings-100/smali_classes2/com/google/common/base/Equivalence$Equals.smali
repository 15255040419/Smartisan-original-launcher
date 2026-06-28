.class final Lcom/google/common/base/Equivalence$Equals;
.super Lcom/google/common/base/Equivalence;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Equals"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Equivalence<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/Equivalence$Equals;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 340
    new-instance v0, Lcom/google/common/base/Equivalence$Equals;

    invoke-direct {v0}, Lcom/google/common/base/Equivalence$Equals;-><init>()V

    sput-object v0, Lcom/google/common/base/Equivalence$Equals;->INSTANCE:Lcom/google/common/base/Equivalence$Equals;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 353
    sget-object p0, Lcom/google/common/base/Equivalence$Equals;->INSTANCE:Lcom/google/common/base/Equivalence$Equals;

    return-object p0
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 344
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected doHash(Ljava/lang/Object;)I
    .locals 0

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
