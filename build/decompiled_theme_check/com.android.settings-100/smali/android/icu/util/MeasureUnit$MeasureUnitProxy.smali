.class final Landroid/icu/util/MeasureUnit$MeasureUnitProxy;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MeasureUnitProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x364588070e86861eL


# instance fields
.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iput-object p1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    .line 1080
    iput-object p2, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1097
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 1098
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    .line 1099
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    .line 1101
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result p0

    if-lez p0, :cond_0

    .line 1103
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 1104
    invoke-interface {p1, v0, v1, p0}, Ljava/io/ObjectInput;->read([BII)I

    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1089
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1090
    iget-object v1, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->type:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1091
    iget-object p0, p0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;->subType:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1092
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    return-void
.end method
