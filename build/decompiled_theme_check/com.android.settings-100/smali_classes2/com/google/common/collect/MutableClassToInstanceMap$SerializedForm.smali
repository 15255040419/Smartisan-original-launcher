.class final Lcom/google/common/collect/MutableClassToInstanceMap$SerializedForm;
.super Ljava/lang/Object;
.source "MutableClassToInstanceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MutableClassToInstanceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/common/collect/MutableClassToInstanceMap$SerializedForm;->backingMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/google/common/collect/MutableClassToInstanceMap$SerializedForm;->backingMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/common/collect/MutableClassToInstanceMap;->create(Ljava/util/Map;)Lcom/google/common/collect/MutableClassToInstanceMap;

    move-result-object p0

    return-object p0
.end method
