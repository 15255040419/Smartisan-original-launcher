.class public Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;
.super Ljava/lang/Object;
.source "BmsgTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    iput-object p1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BMSG >> "

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 57
    instance-of v0, p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    iget-object v0, p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
