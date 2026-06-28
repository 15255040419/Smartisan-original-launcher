.class Lcom/google/common/base/Converter$1$1;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Converter$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final fromIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TA;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/base/Converter$1;


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter$1;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/common/base/Converter$1$1;->this$1:Lcom/google/common/base/Converter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iget-object p1, p0, Lcom/google/common/base/Converter$1$1;->this$1:Lcom/google/common/base/Converter$1;

    iget-object p1, p1, Lcom/google/common/base/Converter$1;->val$fromIterable:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/common/base/Converter$1$1;->this$1:Lcom/google/common/base/Converter$1;

    iget-object v0, v0, Lcom/google/common/base/Converter$1;->this$0:Lcom/google/common/base/Converter;

    iget-object p0, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/google/common/base/Converter$1$1;->fromIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
