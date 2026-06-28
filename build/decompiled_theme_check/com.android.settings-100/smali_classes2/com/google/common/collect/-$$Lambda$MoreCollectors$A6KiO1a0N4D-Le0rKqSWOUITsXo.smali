.class public final synthetic Lcom/google/common/collect/-$$Lambda$MoreCollectors$A6KiO1a0N4D-Le0rKqSWOUITsXo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$MoreCollectors$A6KiO1a0N4D-Le0rKqSWOUITsXo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$MoreCollectors$A6KiO1a0N4D-Le0rKqSWOUITsXo;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$MoreCollectors$A6KiO1a0N4D-Le0rKqSWOUITsXo;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$MoreCollectors$A6KiO1a0N4D-Le0rKqSWOUITsXo;->INSTANCE:Lcom/google/common/collect/-$$Lambda$MoreCollectors$A6KiO1a0N4D-Le0rKqSWOUITsXo;

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

    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-static {p1}, Lcom/google/common/collect/MoreCollectors;->lambda$static$1(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
