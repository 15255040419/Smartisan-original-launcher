.class final Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->this$0:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object p0, p0, Lcom/google/common/collect/FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->access$000(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
