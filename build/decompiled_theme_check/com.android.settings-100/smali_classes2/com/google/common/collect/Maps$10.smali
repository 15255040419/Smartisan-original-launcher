.class final Lcom/google/common/collect/Maps$10;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps;->asValueToValueFunction(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lcom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TV1;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V
    .locals 0

    .line 1963
    iput-object p1, p0, Lcom/google/common/collect/Maps$10;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    iput-object p2, p0, Lcom/google/common/collect/Maps$10;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;)TV2;"
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/google/common/collect/Maps$10;->val$transformer:Lcom/google/common/collect/Maps$EntryTransformer;

    iget-object p0, p0, Lcom/google/common/collect/Maps$10;->val$key:Ljava/lang/Object;

    invoke-interface {v0, p0, p1}, Lcom/google/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
