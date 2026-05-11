.class public Lcom/smartisanos/smengine/x;
.super Ljava/lang/Object;
.source "Mesh.java"


# direct methods
.method public static Ma(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v0, "vertexType can not support ColorFloatOffset"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method

.method public static Na(I)I
    .locals 2

    const/4 v0, 0x7

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    return v0

    :pswitch_6
    return v1

    :pswitch_7
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Oa(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v0, "vertexType can not support Mat Index Offset"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method

.method public static Pa(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v0, "vertexType can not support normal float offset"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Qa(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static Ra(I)I
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    return v1

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v0, "vertex type can not support tex2 offset"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method

.method public static Sa(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    return v1

    .line 1
    :cond_0
    new-instance p0, Lcom/smartisanos/smengine/Mesh$MeshException;

    const-string v0, "vertexType can not support tex float offset"

    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/Mesh$MeshException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1
.end method
