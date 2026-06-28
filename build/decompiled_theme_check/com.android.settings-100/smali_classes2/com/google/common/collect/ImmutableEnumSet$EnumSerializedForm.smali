.class Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableEnumSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 151
    new-instance v0, Lcom/google/common/collect/ImmutableEnumSet;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;->delegate:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;Lcom/google/common/collect/ImmutableEnumSet$1;)V

    return-object v0
.end method
