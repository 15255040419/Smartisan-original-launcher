.class Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableEnumMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableEnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;->delegate:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 129
    new-instance v0, Lcom/google/common/collect/ImmutableEnumMap;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableEnumMap$EnumSerializedForm;->delegate:Ljava/util/EnumMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableEnumMap;-><init>(Ljava/util/EnumMap;Lcom/google/common/collect/ImmutableEnumMap$1;)V

    return-object v0
.end method
