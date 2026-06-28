.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$pg5lCmobtfFNBTlUWWOJMXOdCHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$pg5lCmobtfFNBTlUWWOJMXOdCHI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Streams$pg5lCmobtfFNBTlUWWOJMXOdCHI;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Streams$pg5lCmobtfFNBTlUWWOJMXOdCHI;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Streams$pg5lCmobtfFNBTlUWWOJMXOdCHI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$pg5lCmobtfFNBTlUWWOJMXOdCHI;

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

    check-cast p1, Ljava/util/Spliterator;

    invoke-static {p1}, Lcom/google/common/collect/Streams;->lambda$concat$0(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
