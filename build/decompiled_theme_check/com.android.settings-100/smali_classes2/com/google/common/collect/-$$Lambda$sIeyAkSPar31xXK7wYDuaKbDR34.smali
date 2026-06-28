.class public final synthetic Lcom/google/common/collect/-$$Lambda$sIeyAkSPar31xXK7wYDuaKbDR34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$sIeyAkSPar31xXK7wYDuaKbDR34;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$sIeyAkSPar31xXK7wYDuaKbDR34;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$sIeyAkSPar31xXK7wYDuaKbDR34;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$sIeyAkSPar31xXK7wYDuaKbDR34;->INSTANCE:Lcom/google/common/collect/-$$Lambda$sIeyAkSPar31xXK7wYDuaKbDR34;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Sets$Accumulator;

    invoke-virtual {p1}, Lcom/google/common/collect/Sets$Accumulator;->toImmutableSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method
