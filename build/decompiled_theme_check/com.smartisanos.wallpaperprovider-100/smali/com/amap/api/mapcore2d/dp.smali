.class Lcom/amap/api/mapcore2d/dp;
.super Lcom/amap/api/mapcore2d/dy;
.source "ANRLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/dp$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:I

.field private e:Lcom/amap/api/mapcore2d/dp$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dy;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    .line 21
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/dp;->c:Z

    .line 22
    iput v0, p0, Lcom/amap/api/mapcore2d/dp;->d:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 197
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    aput-object p1, v0, v1

    .line 201
    iget p1, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/api/mapcore2d/dp;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "ANRWriter"

    const-string v0, "addData"

    .line 203
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    :try_start_0
    iget v1, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dp;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 183
    :goto_2
    iget v2, p0, Lcom/amap/api/mapcore2d/dp;->b:I

    if-ge v1, v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/amap/api/mapcore2d/dp;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    const-string v1, "ANRWriter"

    const-string v2, "getLogInfo"

    .line 188
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected a(Lcom/amap/api/mapcore2d/ei;)Lcom/amap/api/mapcore2d/eu;
    .locals 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp;->e:Lcom/amap/api/mapcore2d/dp$a;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/amap/api/mapcore2d/dp$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/mapcore2d/dp$a;-><init>(Lcom/amap/api/mapcore2d/dp;Lcom/amap/api/mapcore2d/ei;Lcom/amap/api/mapcore2d/dp$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dp;->e:Lcom/amap/api/mapcore2d/dp$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "ANRWriter"

    const-string v1, "getListener"

    .line 76
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/dp;->e:Lcom/amap/api/mapcore2d/dp$a;

    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/amap/api/mapcore2d/dg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/di;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "initLog4"

    const-string v1, "initLog3"

    const-string v2, "initLog2"

    const-string v3, "initLog1"

    const-string v4, "ANRWriter"

    const/4 v5, 0x0

    .line 89
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/anr/traces.txt"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    return-object v5

    .line 93
    :cond_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 94
    :try_start_1
    new-instance v6, Lcom/amap/api/mapcore2d/ev;

    sget-object v8, Lcom/amap/api/mapcore2d/ew;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Lcom/amap/api/mapcore2d/ev;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x0

    move v9, v8

    .line 98
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/ev;->a()Ljava/lang/String;

    move-result-object v10

    const-string v11, "pid"

    .line 99
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_3

    :goto_1
    const-string v9, "\"main\""

    .line 100
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 101
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/ev;->a()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    move v9, v12

    :cond_3
    const-string v11, ""

    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v9, v8

    :cond_4
    if-eqz v9, :cond_1

    .line 110
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore2d/dp;->b(Ljava/lang/String;)V

    .line 111
    iget v11, p0, Lcom/amap/api/mapcore2d/dp;->d:I

    const/4 v13, 0x5

    if-ne v11, v13, :cond_5

    goto :goto_3

    .line 114
    :cond_5
    iget-boolean v11, p0, Lcom/amap/api/mapcore2d/dp;->c:Z

    if-nez v11, :cond_7

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/api/mapcore2d/di;

    .line 116
    invoke-virtual {v12}, Lcom/amap/api/mapcore2d/di;->f()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13, v10}, Lcom/amap/api/mapcore2d/dp;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, p0, Lcom/amap/api/mapcore2d/dp;->c:Z

    .line 118
    iget-boolean v13, p0, Lcom/amap/api/mapcore2d/dp;->c:Z

    if-eqz v13, :cond_6

    .line 119
    invoke-virtual {p0, v12}, Lcom/amap/api/mapcore2d/dp;->a(Lcom/amap/api/mapcore2d/di;)V

    goto :goto_2

    .line 123
    :cond_7
    iget v10, p0, Lcom/amap/api/mapcore2d/dp;->d:I

    add-int/2addr v10, v12

    iput v10, p0, Lcom/amap/api/mapcore2d/dp;->d:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    .line 143
    :catch_1
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/ev;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 149
    invoke-static {p1, v4, v2}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p1

    .line 146
    invoke-static {p1, v4, v3}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_c

    :catchall_1
    move-exception p1

    .line 161
    invoke-static {p1, v4, v0}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_c

    :catch_3
    move-exception p1

    .line 158
    invoke-static {p1, v4, v1}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    :catchall_2
    move-exception p0

    move-object v6, v5

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v6, v5

    goto :goto_5

    :catch_5
    move-object v6, v5

    goto :goto_a

    :catchall_3
    move-exception p0

    move-object v6, v5

    move-object v7, v6

    goto :goto_7

    :catch_6
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    :goto_5
    :try_start_5
    const-string v8, "initLog"

    .line 138
    invoke-static {p1, v4, v8}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v6, :cond_8

    .line 143
    :try_start_6
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/ev;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    .line 149
    invoke-static {p1, v4, v2}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception p1

    .line 146
    invoke-static {p1, v4, v3}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    if-eqz v7, :cond_c

    .line 154
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catchall_5
    move-exception p0

    :goto_7
    if-eqz v6, :cond_9

    .line 143
    :try_start_8
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/ev;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p1

    .line 149
    invoke-static {p1, v4, v2}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_8
    move-exception p1

    .line 146
    invoke-static {p1, v4, v3}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    .line 154
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p1

    .line 161
    invoke-static {p1, v4, v0}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception p1

    .line 158
    invoke-static {p1, v4, v1}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_a
    :goto_9
    throw p0

    :catch_a
    move-object v6, v5

    move-object v7, v6

    :catch_b
    :goto_a
    if-eqz v6, :cond_b

    .line 143
    :try_start_a
    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/ev;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception p1

    .line 149
    invoke-static {p1, v4, v2}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :catch_c
    move-exception p1

    .line 146
    invoke-static {p1, v4, v3}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_b
    if-eqz v7, :cond_c

    .line 154
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 166
    :cond_c
    :goto_c
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/dp;->c:Z

    if-eqz p1, :cond_d

    .line 167
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dp;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object v5
.end method

.method protected b()Ljava/lang/String;
    .locals 0

    .line 33
    sget-object p0, Lcom/amap/api/mapcore2d/dv;->d:Ljava/lang/String;

    return-object p0
.end method
