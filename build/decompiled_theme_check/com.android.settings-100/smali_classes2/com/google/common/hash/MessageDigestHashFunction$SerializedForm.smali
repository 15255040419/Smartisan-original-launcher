.class final Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;
.super Ljava/lang/Object;
.source "MessageDigestHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/MessageDigestHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private final bytes:I

.field private final toString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;->algorithmName:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;->bytes:I

    .line 107
    iput-object p3, p0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;->toString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/common/hash/MessageDigestHashFunction$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 111
    new-instance v0, Lcom/google/common/hash/MessageDigestHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;->algorithmName:Ljava/lang/String;

    iget v2, p0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;->bytes:I

    iget-object p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$SerializedForm;->toString:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/hash/MessageDigestHashFunction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
