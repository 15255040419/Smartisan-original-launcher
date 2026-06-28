.class public Landroid/icu/impl/number/Properties;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38d634ca98a9d27bL


# instance fields
.field private transient instance:Landroid/icu/impl/number/DecimalFormatProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 31
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->readObjectImpl(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 38
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->writeObjectImpl(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public getInstance()Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/icu/impl/number/Properties;->instance:Landroid/icu/impl/number/DecimalFormatProperties;

    return-object p0
.end method
