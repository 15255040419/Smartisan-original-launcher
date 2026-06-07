.class public final enum Lf/z/i/b;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/z/i/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lf/z/i/b;

.field public static final enum c:Lf/z/i/b;

.field public static final enum d:Lf/z/i/b;

.field public static final enum e:Lf/z/i/b;

.field public static final enum f:Lf/z/i/b;

.field public static final enum g:Lf/z/i/b;

.field public static final enum h:Lf/z/i/b;

.field public static final enum i:Lf/z/i/b;

.field public static final enum j:Lf/z/i/b;

.field public static final enum k:Lf/z/i/b;

.field public static final enum l:Lf/z/i/b;

.field public static final synthetic m:[Lf/z/i/b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lf/z/i/b;

    const/4 v1, 0x0

    const-string v2, "NO_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->b:Lf/z/i/b;

    .line 2
    new-instance v0, Lf/z/i/b;

    const/4 v2, 0x1

    const-string v3, "PROTOCOL_ERROR"

    invoke-direct {v0, v3, v2, v2}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->c:Lf/z/i/b;

    .line 3
    new-instance v0, Lf/z/i/b;

    const/4 v3, 0x2

    const-string v4, "INTERNAL_ERROR"

    invoke-direct {v0, v4, v3, v3}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->d:Lf/z/i/b;

    .line 4
    new-instance v0, Lf/z/i/b;

    const/4 v4, 0x3

    const-string v5, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v5, v4, v4}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->e:Lf/z/i/b;

    .line 5
    new-instance v0, Lf/z/i/b;

    const/4 v5, 0x4

    const/4 v6, 0x7

    const-string v7, "REFUSED_STREAM"

    invoke-direct {v0, v7, v5, v6}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->f:Lf/z/i/b;

    .line 6
    new-instance v0, Lf/z/i/b;

    const/4 v7, 0x5

    const/16 v8, 0x8

    const-string v9, "CANCEL"

    invoke-direct {v0, v9, v7, v8}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->g:Lf/z/i/b;

    .line 7
    new-instance v0, Lf/z/i/b;

    const/4 v9, 0x6

    const/16 v10, 0x9

    const-string v11, "COMPRESSION_ERROR"

    invoke-direct {v0, v11, v9, v10}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->h:Lf/z/i/b;

    .line 8
    new-instance v0, Lf/z/i/b;

    const/16 v11, 0xa

    const-string v12, "CONNECT_ERROR"

    invoke-direct {v0, v12, v6, v11}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->i:Lf/z/i/b;

    .line 9
    new-instance v0, Lf/z/i/b;

    const/16 v12, 0xb

    const-string v13, "ENHANCE_YOUR_CALM"

    invoke-direct {v0, v13, v8, v12}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->j:Lf/z/i/b;

    .line 10
    new-instance v0, Lf/z/i/b;

    const-string v13, "INADEQUATE_SECURITY"

    const/16 v14, 0xc

    invoke-direct {v0, v13, v10, v14}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->k:Lf/z/i/b;

    .line 11
    new-instance v0, Lf/z/i/b;

    const-string v13, "HTTP_1_1_REQUIRED"

    const/16 v14, 0xd

    invoke-direct {v0, v13, v11, v14}, Lf/z/i/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lf/z/i/b;->l:Lf/z/i/b;

    new-array v0, v12, [Lf/z/i/b;

    .line 12
    sget-object v12, Lf/z/i/b;->b:Lf/z/i/b;

    aput-object v12, v0, v1

    sget-object v1, Lf/z/i/b;->c:Lf/z/i/b;

    aput-object v1, v0, v2

    sget-object v1, Lf/z/i/b;->d:Lf/z/i/b;

    aput-object v1, v0, v3

    sget-object v1, Lf/z/i/b;->e:Lf/z/i/b;

    aput-object v1, v0, v4

    sget-object v1, Lf/z/i/b;->f:Lf/z/i/b;

    aput-object v1, v0, v5

    sget-object v1, Lf/z/i/b;->g:Lf/z/i/b;

    aput-object v1, v0, v7

    sget-object v1, Lf/z/i/b;->h:Lf/z/i/b;

    aput-object v1, v0, v9

    sget-object v1, Lf/z/i/b;->i:Lf/z/i/b;

    aput-object v1, v0, v6

    sget-object v1, Lf/z/i/b;->j:Lf/z/i/b;

    aput-object v1, v0, v8

    sget-object v1, Lf/z/i/b;->k:Lf/z/i/b;

    aput-object v1, v0, v10

    sget-object v1, Lf/z/i/b;->l:Lf/z/i/b;

    aput-object v1, v0, v11

    sput-object v0, Lf/z/i/b;->m:[Lf/z/i/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lf/z/i/b;->a:I

    return-void
.end method

.method public static a(I)Lf/z/i/b;
    .locals 5

    .line 1
    invoke-static {}, Lf/z/i/b;->values()[Lf/z/i/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lf/z/i/b;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lf/z/i/b;
    .locals 1

    .line 1
    const-class v0, Lf/z/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/z/i/b;

    return-object p0
.end method

.method public static values()[Lf/z/i/b;
    .locals 1

    .line 1
    sget-object v0, Lf/z/i/b;->m:[Lf/z/i/b;

    invoke-virtual {v0}, [Lf/z/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/z/i/b;

    return-object v0
.end method
