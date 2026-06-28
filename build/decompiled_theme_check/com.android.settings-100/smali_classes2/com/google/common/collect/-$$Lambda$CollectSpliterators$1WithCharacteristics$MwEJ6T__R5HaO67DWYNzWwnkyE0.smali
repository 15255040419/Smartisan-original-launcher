.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1WithCharacteristics$MwEJ6T__R5HaO67DWYNzWwnkyE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;

.field private final synthetic f$1:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1WithCharacteristics$MwEJ6T__R5HaO67DWYNzWwnkyE0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1WithCharacteristics$MwEJ6T__R5HaO67DWYNzWwnkyE0;->f$1:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1WithCharacteristics$MwEJ6T__R5HaO67DWYNzWwnkyE0;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$CollectSpliterators$1WithCharacteristics$MwEJ6T__R5HaO67DWYNzWwnkyE0;->f$1:Ljava/util/function/IntFunction;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->lambda$forEachRemaining$1(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method
