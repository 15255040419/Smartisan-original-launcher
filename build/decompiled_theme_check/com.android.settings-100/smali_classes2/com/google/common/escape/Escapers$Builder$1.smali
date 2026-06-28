.class Lcom/google/common/escape/Escapers$Builder$1;
.super Lcom/google/common/escape/ArrayBasedCharEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final replacementChars:[C

.field final synthetic this$0:Lcom/google/common/escape/Escapers$Builder;


# direct methods
.method constructor <init>(Lcom/google/common/escape/Escapers$Builder;Ljava/util/Map;CC)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$0:Lcom/google/common/escape/Escapers$Builder;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedCharEscaper;-><init>(Ljava/util/Map;CC)V

    .line 154
    iget-object p1, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$0:Lcom/google/common/escape/Escapers$Builder;

    .line 155
    invoke-static {p1}, Lcom/google/common/escape/Escapers$Builder;->access$100(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/escape/Escapers$Builder$1;->this$0:Lcom/google/common/escape/Escapers$Builder;

    invoke-static {p1}, Lcom/google/common/escape/Escapers$Builder;->access$100(Lcom/google/common/escape/Escapers$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    return-void
.end method


# virtual methods
.method protected escapeUnsafe(C)[C
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/google/common/escape/Escapers$Builder$1;->replacementChars:[C

    return-object p0
.end method
