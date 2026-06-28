.class final Landroid/icu/impl/number/CompactData$CompactDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "CompactData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/CompactData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompactDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field data:Landroid/icu/impl/number/CompactData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    const-class v0, Landroid/icu/impl/number/CompactData;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/number/CompactData;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 152
    iput-object p1, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 9

    .line 158
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 159
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    .line 164
    iget-object v3, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v3}, Landroid/icu/impl/number/CompactData;->access$000(Landroid/icu/impl/number/CompactData;)[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 168
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    move v5, v3

    move v3, v0

    .line 169
    :goto_1
    invoke-interface {v4, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v6

    .line 174
    iget-object v7, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v7}, Landroid/icu/impl/number/CompactData;->access$100(Landroid/icu/impl/number/CompactData;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6}, Landroid/icu/impl/number/CompactData;->access$200(ILandroid/icu/impl/StandardPlural;)I

    move-result v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_0

    goto :goto_2

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    .line 181
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v7, "<USE FALLBACK>"

    .line 186
    :cond_1
    iget-object v8, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v8}, Landroid/icu/impl/number/CompactData;->access$100(Landroid/icu/impl/number/CompactData;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v6}, Landroid/icu/impl/number/CompactData;->access$200(ILandroid/icu/impl/StandardPlural;)I

    move-result v6

    aput-object v7, v8, v6

    if-nez v5, :cond_2

    .line 191
    invoke-static {v7}, Landroid/icu/impl/number/CompactData;->access$300(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    int-to-byte v5, v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v3}, Landroid/icu/impl/number/CompactData;->access$000(Landroid/icu/impl/number/CompactData;)[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_5

    .line 200
    iget-object v3, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v3}, Landroid/icu/impl/number/CompactData;->access$000(Landroid/icu/impl/number/CompactData;)[B

    move-result-object v3

    aput-byte v5, v3, v2

    .line 201
    iget-object v3, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v3}, Landroid/icu/impl/number/CompactData;->access$400(Landroid/icu/impl/number/CompactData;)B

    move-result v3

    if-le v2, v3, :cond_4

    .line 202
    iget-object v3, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v3, v2}, Landroid/icu/impl/number/CompactData;->access$402(Landroid/icu/impl/number/CompactData;B)B

    .line 204
    :cond_4
    iget-object v2, p0, Landroid/icu/impl/number/CompactData$CompactDataSink;->data:Landroid/icu/impl/number/CompactData;

    invoke-static {v2, v0}, Landroid/icu/impl/number/CompactData;->access$502(Landroid/icu/impl/number/CompactData;Z)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
