.class Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;
.super Ljava/lang/Object;
.source "Funnels.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels$StringCharsetFunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final charsetCanonicalName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;->charsetCanonicalName:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm;->charsetCanonicalName:Ljava/lang/String;

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/hash/Funnels;->stringFunnel(Ljava/nio/charset/Charset;)Lcom/google/common/hash/Funnel;

    move-result-object p0

    return-object p0
.end method
