.class public La/e/a/a;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"


# instance fields
.field public a:I

.field public final b:La/e/a/b;

.field public final c:La/e/a/c;

.field public d:I

.field public e:La/e/a/g;

.field public f:[I

.field public g:[I

.field public h:[F

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(La/e/a/b;La/e/a/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/e/a/a;->a:I

    const/16 v1, 0x8

    .line 3
    iput v1, p0, La/e/a/a;->d:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, La/e/a/a;->e:La/e/a/g;

    .line 5
    iget v1, p0, La/e/a/a;->d:I

    new-array v2, v1, [I

    iput-object v2, p0, La/e/a/a;->f:[I

    .line 6
    new-array v2, v1, [I

    iput-object v2, p0, La/e/a/a;->g:[I

    .line 7
    new-array v1, v1, [F

    iput-object v1, p0, La/e/a/a;->h:[F

    const/4 v1, -0x1

    .line 8
    iput v1, p0, La/e/a/a;->i:I

    .line 9
    iput v1, p0, La/e/a/a;->j:I

    .line 10
    iput-boolean v0, p0, La/e/a/a;->k:Z

    .line 11
    iput-object p1, p0, La/e/a/a;->b:La/e/a/b;

    .line 12
    iput-object p2, p0, La/e/a/a;->c:La/e/a/c;

    return-void
.end method


# virtual methods
.method public final a(La/e/a/g;Z)F
    .locals 8

    .line 110
    iget-object v0, p0, La/e/a/a;->e:La/e/a/g;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, La/e/a/a;->e:La/e/a/g;

    .line 112
    :cond_0
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-eq v0, v2, :cond_6

    .line 113
    iget v5, p0, La/e/a/a;->a:I

    if-ge v3, v5, :cond_6

    .line 114
    iget-object v5, p0, La/e/a/a;->f:[I

    aget v5, v5, v0

    .line 115
    iget v6, p1, La/e/a/g;->b:I

    if-ne v5, v6, :cond_5

    .line 116
    iget v1, p0, La/e/a/a;->i:I

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v1, p0, La/e/a/a;->g:[I

    aget v1, v1, v0

    iput v1, p0, La/e/a/a;->i:I

    goto :goto_1

    .line 118
    :cond_2
    iget-object v1, p0, La/e/a/a;->g:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_1
    if-eqz p2, :cond_3

    .line 119
    iget-object p2, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {p1, p2}, La/e/a/g;->b(La/e/a/b;)V

    .line 120
    :cond_3
    iget p2, p1, La/e/a/g;->j:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, La/e/a/g;->j:I

    .line 121
    iget p1, p0, La/e/a/a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, La/e/a/a;->a:I

    .line 122
    iget-object p1, p0, La/e/a/a;->f:[I

    aput v2, p1, v0

    .line 123
    iget-boolean p1, p0, La/e/a/a;->k:Z

    if-eqz p1, :cond_4

    .line 124
    iput v0, p0, La/e/a/a;->j:I

    .line 125
    :cond_4
    iget-object p1, p0, La/e/a/a;->h:[F

    aget p1, p1, v0

    return p1

    .line 126
    :cond_5
    iget-object v4, p0, La/e/a/a;->g:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_6
    return v1
.end method

.method public final a(I)La/e/a/g;
    .locals 3

    .line 204
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 205
    iget v2, p0, La/e/a/a;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 206
    iget-object p1, p0, La/e/a/a;->c:La/e/a/c;

    iget-object p1, p1, La/e/a/c;->c:[La/e/a/g;

    iget-object v1, p0, La/e/a/a;->f:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    .line 207
    :cond_0
    iget-object v2, p0, La/e/a/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroidx/constraintlayout/solver/LinearSystem;)La/e/a/g;
    .locals 14

    .line 145
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v1

    move v6, v2

    move v8, v6

    move v5, v3

    move v7, v5

    :goto_0
    const/4 v9, -0x1

    if-eq v0, v9, :cond_8

    .line 146
    iget v9, p0, La/e/a/a;->a:I

    if-ge v2, v9, :cond_8

    .line 147
    iget-object v9, p0, La/e/a/a;->h:[F

    aget v10, v9, v0

    const v11, 0x3a83126f    # 0.001f

    .line 148
    iget-object v12, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v12, v12, La/e/a/c;->c:[La/e/a/g;

    iget-object v13, p0, La/e/a/a;->f:[I

    aget v13, v13, v0

    aget-object v12, v12, v13

    cmpg-float v13, v10, v3

    if-gez v13, :cond_0

    const v11, -0x457ced91    # -0.001f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    .line 149
    aput v3, v9, v0

    .line 150
    iget-object v9, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {v12, v9}, La/e/a/g;->b(La/e/a/b;)V

    goto :goto_1

    :cond_0
    cmpg-float v11, v10, v11

    if-gez v11, :cond_1

    .line 151
    aput v3, v9, v0

    .line 152
    iget-object v9, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {v12, v9}, La/e/a/g;->b(La/e/a/b;)V

    :goto_1
    move v10, v3

    :cond_1
    cmpl-float v9, v10, v3

    const/4 v11, 0x1

    if-eqz v9, :cond_7

    .line 153
    iget-object v9, v12, La/e/a/g;->g:La/e/a/g$a;

    sget-object v13, La/e/a/g$a;->a:La/e/a/g$a;

    if-ne v9, v13, :cond_4

    if-nez v4, :cond_2

    .line 154
    invoke-virtual {p0, v12, p1}, La/e/a/a;->a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    :goto_2
    move v6, v4

    move v5, v10

    :goto_3
    move-object v4, v12

    goto :goto_6

    :cond_2
    cmpl-float v9, v5, v10

    if-lez v9, :cond_3

    .line 155
    invoke-virtual {p0, v12, p1}, La/e/a/a;->a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    goto :goto_2

    :cond_3
    if-nez v6, :cond_7

    .line 156
    invoke-virtual {p0, v12, p1}, La/e/a/a;->a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v5, v10

    move v6, v11

    goto :goto_3

    :cond_4
    if-nez v4, :cond_7

    cmpg-float v9, v10, v3

    if-gez v9, :cond_7

    if-nez v1, :cond_5

    .line 157
    invoke-virtual {p0, v12, p1}, La/e/a/a;->a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v1

    :goto_4
    move v8, v1

    move v7, v10

    :goto_5
    move-object v1, v12

    goto :goto_6

    :cond_5
    cmpl-float v9, v7, v10

    if-lez v9, :cond_6

    .line 158
    invoke-virtual {p0, v12, p1}, La/e/a/a;->a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v1

    goto :goto_4

    :cond_6
    if-nez v8, :cond_7

    .line 159
    invoke-virtual {p0, v12, p1}, La/e/a/a;->a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v10

    move v8, v11

    goto :goto_5

    .line 160
    :cond_7
    :goto_6
    iget-object v9, p0, La/e/a/a;->g:[I

    aget v0, v9, v0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    return-object v1
.end method

.method public a([ZLa/e/a/g;)La/e/a/g;
    .locals 8

    .line 196
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 197
    iget v5, p0, La/e/a/a;->a:I

    if-ge v2, v5, :cond_3

    .line 198
    iget-object v5, p0, La/e/a/a;->h:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    .line 199
    iget-object v5, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v5, v5, La/e/a/c;->c:[La/e/a/g;

    iget-object v6, p0, La/e/a/a;->f:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    if-eqz p1, :cond_0

    .line 200
    iget v6, v5, La/e/a/g;->b:I

    aget-boolean v6, p1, v6

    if-nez v6, :cond_2

    :cond_0
    if-eq v5, p2, :cond_2

    .line 201
    iget-object v6, v5, La/e/a/g;->g:La/e/a/g$a;

    sget-object v7, La/e/a/g$a;->c:La/e/a/g$a;

    if-eq v6, v7, :cond_1

    sget-object v7, La/e/a/g$a;->d:La/e/a/g$a;

    if-ne v6, v7, :cond_2

    .line 202
    :cond_1
    iget-object v6, p0, La/e/a/a;->h:[F

    aget v6, v6, v0

    cmpg-float v7, v6, v4

    if-gez v7, :cond_2

    move-object v3, v5

    move v4, v6

    .line 203
    :cond_2
    iget-object v5, p0, La/e/a/a;->g:[I

    aget v0, v5, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public final a()V
    .locals 5

    .line 127
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 128
    iget v4, p0, La/e/a/a;->a:I

    if-ge v2, v4, :cond_1

    .line 129
    iget-object v3, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v3, v3, La/e/a/c;->c:[La/e/a/g;

    iget-object v4, p0, La/e/a/a;->f:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 130
    iget-object v4, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {v3, v4}, La/e/a/g;->b(La/e/a/b;)V

    .line 131
    :cond_0
    iget-object v3, p0, La/e/a/a;->g:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iput v3, p0, La/e/a/a;->i:I

    .line 133
    iput v3, p0, La/e/a/a;->j:I

    .line 134
    iput-boolean v1, p0, La/e/a/a;->k:Z

    .line 135
    iput v1, p0, La/e/a/a;->a:I

    return-void
.end method

.method public a(F)V
    .locals 4

    .line 140
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 141
    iget v2, p0, La/e/a/a;->a:I

    if-ge v1, v2, :cond_0

    .line 142
    iget-object v2, p0, La/e/a/a;->h:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 143
    iget-object v2, p0, La/e/a/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(La/e/a/b;La/e/a/b;Z)V
    .locals 8

    .line 161
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 162
    iget v4, p0, La/e/a/a;->a:I

    if-ge v2, v4, :cond_3

    .line 163
    iget-object v4, p0, La/e/a/a;->f:[I

    aget v4, v4, v0

    iget-object v5, p2, La/e/a/b;->a:La/e/a/g;

    iget v6, v5, La/e/a/g;->b:I

    if-ne v4, v6, :cond_2

    .line 164
    iget-object v2, p0, La/e/a/a;->h:[F

    aget v0, v2, v0

    .line 165
    invoke-virtual {p0, v5, p3}, La/e/a/a;->a(La/e/a/g;Z)F

    .line 166
    iget-object v2, p2, La/e/a/b;->d:La/e/a/a;

    .line 167
    iget v4, v2, La/e/a/a;->i:I

    move v5, v1

    :goto_2
    if-eq v4, v3, :cond_0

    .line 168
    iget v6, v2, La/e/a/a;->a:I

    if-ge v5, v6, :cond_0

    .line 169
    iget-object v6, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v6, v6, La/e/a/c;->c:[La/e/a/g;

    iget-object v7, v2, La/e/a/a;->f:[I

    aget v7, v7, v4

    aget-object v6, v6, v7

    .line 170
    iget-object v7, v2, La/e/a/a;->h:[F

    aget v7, v7, v4

    mul-float/2addr v7, v0

    .line 171
    invoke-virtual {p0, v6, v7, p3}, La/e/a/a;->a(La/e/a/g;FZ)V

    .line 172
    iget-object v6, v2, La/e/a/a;->g:[I

    aget v4, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 173
    :cond_0
    iget v2, p1, La/e/a/b;->b:F

    iget v3, p2, La/e/a/b;->b:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, La/e/a/b;->b:F

    if-eqz p3, :cond_1

    .line 174
    iget-object v0, p2, La/e/a/b;->a:La/e/a/g;

    invoke-virtual {v0, p1}, La/e/a/g;->b(La/e/a/b;)V

    .line 175
    :cond_1
    iget v0, p0, La/e/a/a;->i:I

    goto :goto_0

    .line 176
    :cond_2
    iget-object v3, p0, La/e/a/a;->g:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(La/e/a/b;[La/e/a/b;)V
    .locals 10

    .line 177
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 178
    iget v4, p0, La/e/a/a;->a:I

    if-ge v2, v4, :cond_2

    .line 179
    iget-object v4, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v4, v4, La/e/a/c;->c:[La/e/a/g;

    iget-object v5, p0, La/e/a/a;->f:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    .line 180
    iget v5, v4, La/e/a/g;->c:I

    if-eq v5, v3, :cond_1

    .line 181
    iget-object v2, p0, La/e/a/a;->h:[F

    aget v0, v2, v0

    const/4 v2, 0x1

    .line 182
    invoke-virtual {p0, v4, v2}, La/e/a/a;->a(La/e/a/g;Z)F

    .line 183
    iget v4, v4, La/e/a/g;->c:I

    aget-object v4, p2, v4

    .line 184
    iget-boolean v5, v4, La/e/a/b;->e:Z

    if-nez v5, :cond_0

    .line 185
    iget-object v5, v4, La/e/a/b;->d:La/e/a/a;

    .line 186
    iget v6, v5, La/e/a/a;->i:I

    move v7, v1

    :goto_2
    if-eq v6, v3, :cond_0

    .line 187
    iget v8, v5, La/e/a/a;->a:I

    if-ge v7, v8, :cond_0

    .line 188
    iget-object v8, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v8, v8, La/e/a/c;->c:[La/e/a/g;

    iget-object v9, v5, La/e/a/a;->f:[I

    aget v9, v9, v6

    aget-object v8, v8, v9

    .line 189
    iget-object v9, v5, La/e/a/a;->h:[F

    aget v9, v9, v6

    mul-float/2addr v9, v0

    .line 190
    invoke-virtual {p0, v8, v9, v2}, La/e/a/a;->a(La/e/a/g;FZ)V

    .line 191
    iget-object v8, v5, La/e/a/a;->g:[I

    aget v6, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 192
    :cond_0
    iget v2, p1, La/e/a/b;->b:F

    iget v3, v4, La/e/a/b;->b:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p1, La/e/a/b;->b:F

    .line 193
    iget-object v0, v4, La/e/a/b;->a:La/e/a/g;

    invoke-virtual {v0, p1}, La/e/a/g;->b(La/e/a/b;)V

    .line 194
    iget v0, p0, La/e/a/a;->i:I

    goto :goto_0

    .line 195
    :cond_1
    iget-object v3, p0, La/e/a/a;->g:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(La/e/a/g;F)V
    .locals 9

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, v1}, La/e/a/a;->a(La/e/a/g;Z)F

    return-void

    .line 2
    :cond_0
    iget v0, p0, La/e/a/a;->i:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 3
    iput v2, p0, La/e/a/a;->i:I

    .line 4
    iget-object v0, p0, La/e/a/a;->h:[F

    iget v2, p0, La/e/a/a;->i:I

    aput p2, v0, v2

    .line 5
    iget-object p2, p0, La/e/a/a;->f:[I

    iget v0, p1, La/e/a/g;->b:I

    aput v0, p2, v2

    .line 6
    iget-object p2, p0, La/e/a/a;->g:[I

    aput v3, p2, v2

    .line 7
    iget p2, p1, La/e/a/g;->j:I

    add-int/2addr p2, v1

    iput p2, p1, La/e/a/g;->j:I

    .line 8
    iget-object p2, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {p1, p2}, La/e/a/g;->a(La/e/a/b;)V

    .line 9
    iget p1, p0, La/e/a/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, La/e/a/a;->a:I

    .line 10
    iget-boolean p1, p0, La/e/a/a;->k:Z

    if-nez p1, :cond_1

    .line 11
    iget p1, p0, La/e/a/a;->j:I

    add-int/2addr p1, v1

    iput p1, p0, La/e/a/a;->j:I

    .line 12
    iget p1, p0, La/e/a/a;->j:I

    iget-object p2, p0, La/e/a/a;->f:[I

    array-length v0, p2

    if-lt p1, v0, :cond_1

    .line 13
    iput-boolean v1, p0, La/e/a/a;->k:Z

    .line 14
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, La/e/a/a;->j:I

    :cond_1
    return-void

    :cond_2
    move v4, v2

    move v5, v3

    :goto_0
    if-eq v0, v3, :cond_5

    .line 15
    iget v6, p0, La/e/a/a;->a:I

    if-ge v4, v6, :cond_5

    .line 16
    iget-object v6, p0, La/e/a/a;->f:[I

    aget v7, v6, v0

    iget v8, p1, La/e/a/g;->b:I

    if-ne v7, v8, :cond_3

    .line 17
    iget-object p1, p0, La/e/a/a;->h:[F

    aput p2, p1, v0

    return-void

    .line 18
    :cond_3
    aget v6, v6, v0

    if-ge v6, v8, :cond_4

    move v5, v0

    .line 19
    :cond_4
    iget-object v6, p0, La/e/a/a;->g:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_5
    iget v0, p0, La/e/a/a;->j:I

    add-int/lit8 v4, v0, 0x1

    .line 21
    iget-boolean v6, p0, La/e/a/a;->k:Z

    if-eqz v6, :cond_7

    .line 22
    iget-object v4, p0, La/e/a/a;->f:[I

    aget v6, v4, v0

    if-ne v6, v3, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    array-length v0, v4

    goto :goto_1

    :cond_7
    move v0, v4

    .line 24
    :goto_1
    iget-object v4, p0, La/e/a/a;->f:[I

    array-length v6, v4

    if-lt v0, v6, :cond_9

    .line 25
    iget v6, p0, La/e/a/a;->a:I

    array-length v4, v4

    if-ge v6, v4, :cond_9

    move v4, v2

    .line 26
    :goto_2
    iget-object v6, p0, La/e/a/a;->f:[I

    array-length v7, v6

    if-ge v4, v7, :cond_9

    .line 27
    aget v6, v6, v4

    if-ne v6, v3, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 28
    :cond_9
    :goto_3
    iget-object v4, p0, La/e/a/a;->f:[I

    array-length v6, v4

    if-lt v0, v6, :cond_a

    .line 29
    array-length v0, v4

    .line 30
    iget v4, p0, La/e/a/a;->d:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, La/e/a/a;->d:I

    .line 31
    iput-boolean v2, p0, La/e/a/a;->k:Z

    add-int/lit8 v2, v0, -0x1

    .line 32
    iput v2, p0, La/e/a/a;->j:I

    .line 33
    iget-object v2, p0, La/e/a/a;->h:[F

    iget v4, p0, La/e/a/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, La/e/a/a;->h:[F

    .line 34
    iget-object v2, p0, La/e/a/a;->f:[I

    iget v4, p0, La/e/a/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, La/e/a/a;->f:[I

    .line 35
    iget-object v2, p0, La/e/a/a;->g:[I

    iget v4, p0, La/e/a/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, La/e/a/a;->g:[I

    .line 36
    :cond_a
    iget-object v2, p0, La/e/a/a;->f:[I

    iget v4, p1, La/e/a/g;->b:I

    aput v4, v2, v0

    .line 37
    iget-object v2, p0, La/e/a/a;->h:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_b

    .line 38
    iget-object p2, p0, La/e/a/a;->g:[I

    aget v2, p2, v5

    aput v2, p2, v0

    .line 39
    aput v0, p2, v5

    goto :goto_4

    .line 40
    :cond_b
    iget-object p2, p0, La/e/a/a;->g:[I

    iget v2, p0, La/e/a/a;->i:I

    aput v2, p2, v0

    .line 41
    iput v0, p0, La/e/a/a;->i:I

    .line 42
    :goto_4
    iget p2, p1, La/e/a/g;->j:I

    add-int/2addr p2, v1

    iput p2, p1, La/e/a/g;->j:I

    .line 43
    iget-object p2, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {p1, p2}, La/e/a/g;->a(La/e/a/b;)V

    .line 44
    iget p1, p0, La/e/a/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, La/e/a/a;->a:I

    .line 45
    iget-boolean p1, p0, La/e/a/a;->k:Z

    if-nez p1, :cond_c

    .line 46
    iget p1, p0, La/e/a/a;->j:I

    add-int/2addr p1, v1

    iput p1, p0, La/e/a/a;->j:I

    .line 47
    :cond_c
    iget p1, p0, La/e/a/a;->a:I

    iget-object p2, p0, La/e/a/a;->f:[I

    array-length p2, p2

    if-lt p1, p2, :cond_d

    .line 48
    iput-boolean v1, p0, La/e/a/a;->k:Z

    .line 49
    :cond_d
    iget p1, p0, La/e/a/a;->j:I

    iget-object p2, p0, La/e/a/a;->f:[I

    array-length v0, p2

    if-lt p1, v0, :cond_e

    .line 50
    iput-boolean v1, p0, La/e/a/a;->k:Z

    .line 51
    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, La/e/a/a;->j:I

    :cond_e
    return-void
.end method

.method public final a(La/e/a/g;FZ)V
    .locals 10

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return-void

    .line 52
    :cond_0
    iget v1, p0, La/e/a/a;->i:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 53
    iput v2, p0, La/e/a/a;->i:I

    .line 54
    iget-object p3, p0, La/e/a/a;->h:[F

    iget v0, p0, La/e/a/a;->i:I

    aput p2, p3, v0

    .line 55
    iget-object p2, p0, La/e/a/a;->f:[I

    iget p3, p1, La/e/a/g;->b:I

    aput p3, p2, v0

    .line 56
    iget-object p2, p0, La/e/a/a;->g:[I

    aput v3, p2, v0

    .line 57
    iget p2, p1, La/e/a/g;->j:I

    add-int/2addr p2, v4

    iput p2, p1, La/e/a/g;->j:I

    .line 58
    iget-object p2, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {p1, p2}, La/e/a/g;->a(La/e/a/b;)V

    .line 59
    iget p1, p0, La/e/a/a;->a:I

    add-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->a:I

    .line 60
    iget-boolean p1, p0, La/e/a/a;->k:Z

    if-nez p1, :cond_1

    .line 61
    iget p1, p0, La/e/a/a;->j:I

    add-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->j:I

    .line 62
    iget p1, p0, La/e/a/a;->j:I

    iget-object p2, p0, La/e/a/a;->f:[I

    array-length p3, p2

    if-lt p1, p3, :cond_1

    .line 63
    iput-boolean v4, p0, La/e/a/a;->k:Z

    .line 64
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->j:I

    :cond_1
    return-void

    :cond_2
    move v5, v2

    move v6, v3

    :goto_0
    if-eq v1, v3, :cond_9

    .line 65
    iget v7, p0, La/e/a/a;->a:I

    if-ge v5, v7, :cond_9

    .line 66
    iget-object v7, p0, La/e/a/a;->f:[I

    aget v8, v7, v1

    .line 67
    iget v9, p1, La/e/a/g;->b:I

    if-ne v8, v9, :cond_7

    .line 68
    iget-object v2, p0, La/e/a/a;->h:[F

    aget v3, v2, v1

    add-float/2addr v3, p2

    aput v3, v2, v1

    .line 69
    aget p2, v2, v1

    cmpl-float p2, p2, v0

    if-nez p2, :cond_6

    .line 70
    iget p2, p0, La/e/a/a;->i:I

    if-ne v1, p2, :cond_3

    .line 71
    iget-object p2, p0, La/e/a/a;->g:[I

    aget p2, p2, v1

    iput p2, p0, La/e/a/a;->i:I

    goto :goto_1

    .line 72
    :cond_3
    iget-object p2, p0, La/e/a/a;->g:[I

    aget v0, p2, v1

    aput v0, p2, v6

    :goto_1
    if-eqz p3, :cond_4

    .line 73
    iget-object p2, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {p1, p2}, La/e/a/g;->b(La/e/a/b;)V

    .line 74
    :cond_4
    iget-boolean p2, p0, La/e/a/a;->k:Z

    if-eqz p2, :cond_5

    .line 75
    iput v1, p0, La/e/a/a;->j:I

    .line 76
    :cond_5
    iget p2, p1, La/e/a/g;->j:I

    sub-int/2addr p2, v4

    iput p2, p1, La/e/a/g;->j:I

    .line 77
    iget p1, p0, La/e/a/a;->a:I

    sub-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->a:I

    :cond_6
    return-void

    .line 78
    :cond_7
    aget v7, v7, v1

    if-ge v7, v9, :cond_8

    move v6, v1

    .line 79
    :cond_8
    iget-object v7, p0, La/e/a/a;->g:[I

    aget v1, v7, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_9
    iget p3, p0, La/e/a/a;->j:I

    add-int/lit8 v0, p3, 0x1

    .line 81
    iget-boolean v1, p0, La/e/a/a;->k:Z

    if-eqz v1, :cond_b

    .line 82
    iget-object v0, p0, La/e/a/a;->f:[I

    aget v1, v0, p3

    if-ne v1, v3, :cond_a

    goto :goto_2

    .line 83
    :cond_a
    array-length p3, v0

    goto :goto_2

    :cond_b
    move p3, v0

    .line 84
    :goto_2
    iget-object v0, p0, La/e/a/a;->f:[I

    array-length v1, v0

    if-lt p3, v1, :cond_d

    .line 85
    iget v1, p0, La/e/a/a;->a:I

    array-length v0, v0

    if-ge v1, v0, :cond_d

    move v0, v2

    .line 86
    :goto_3
    iget-object v1, p0, La/e/a/a;->f:[I

    array-length v5, v1

    if-ge v0, v5, :cond_d

    .line 87
    aget v1, v1, v0

    if-ne v1, v3, :cond_c

    move p3, v0

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 88
    :cond_d
    :goto_4
    iget-object v0, p0, La/e/a/a;->f:[I

    array-length v1, v0

    if-lt p3, v1, :cond_e

    .line 89
    array-length p3, v0

    .line 90
    iget v0, p0, La/e/a/a;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, La/e/a/a;->d:I

    .line 91
    iput-boolean v2, p0, La/e/a/a;->k:Z

    add-int/lit8 v0, p3, -0x1

    .line 92
    iput v0, p0, La/e/a/a;->j:I

    .line 93
    iget-object v0, p0, La/e/a/a;->h:[F

    iget v1, p0, La/e/a/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, La/e/a/a;->h:[F

    .line 94
    iget-object v0, p0, La/e/a/a;->f:[I

    iget v1, p0, La/e/a/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, La/e/a/a;->f:[I

    .line 95
    iget-object v0, p0, La/e/a/a;->g:[I

    iget v1, p0, La/e/a/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, La/e/a/a;->g:[I

    .line 96
    :cond_e
    iget-object v0, p0, La/e/a/a;->f:[I

    iget v1, p1, La/e/a/g;->b:I

    aput v1, v0, p3

    .line 97
    iget-object v0, p0, La/e/a/a;->h:[F

    aput p2, v0, p3

    if-eq v6, v3, :cond_f

    .line 98
    iget-object p2, p0, La/e/a/a;->g:[I

    aget v0, p2, v6

    aput v0, p2, p3

    .line 99
    aput p3, p2, v6

    goto :goto_5

    .line 100
    :cond_f
    iget-object p2, p0, La/e/a/a;->g:[I

    iget v0, p0, La/e/a/a;->i:I

    aput v0, p2, p3

    .line 101
    iput p3, p0, La/e/a/a;->i:I

    .line 102
    :goto_5
    iget p2, p1, La/e/a/g;->j:I

    add-int/2addr p2, v4

    iput p2, p1, La/e/a/g;->j:I

    .line 103
    iget-object p2, p0, La/e/a/a;->b:La/e/a/b;

    invoke-virtual {p1, p2}, La/e/a/g;->a(La/e/a/b;)V

    .line 104
    iget p1, p0, La/e/a/a;->a:I

    add-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->a:I

    .line 105
    iget-boolean p1, p0, La/e/a/a;->k:Z

    if-nez p1, :cond_10

    .line 106
    iget p1, p0, La/e/a/a;->j:I

    add-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->j:I

    .line 107
    :cond_10
    iget p1, p0, La/e/a/a;->j:I

    iget-object p2, p0, La/e/a/a;->f:[I

    array-length p3, p2

    if-lt p1, p3, :cond_11

    .line 108
    iput-boolean v4, p0, La/e/a/a;->k:Z

    .line 109
    array-length p1, p2

    sub-int/2addr p1, v4

    iput p1, p0, La/e/a/a;->j:I

    :cond_11
    return-void
.end method

.method public final a(La/e/a/g;)Z
    .locals 6

    .line 136
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    move v3, v2

    :goto_0
    if-eq v0, v1, :cond_2

    .line 137
    iget v4, p0, La/e/a/a;->a:I

    if-ge v3, v4, :cond_2

    .line 138
    iget-object v4, p0, La/e/a/a;->f:[I

    aget v4, v4, v0

    iget v5, p1, La/e/a/g;->b:I

    if-ne v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    .line 139
    :cond_1
    iget-object v4, p0, La/e/a/a;->g:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final a(La/e/a/g;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 0

    .line 144
    iget p1, p1, La/e/a/g;->j:I

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public final b(I)F
    .locals 3

    .line 5
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 6
    iget v2, p0, La/e/a/a;->a:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 7
    iget-object p1, p0, La/e/a/a;->h:[F

    aget p1, p1, v0

    return p1

    .line 8
    :cond_0
    iget-object v2, p0, La/e/a/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(La/e/a/g;)F
    .locals 4

    .line 9
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 10
    iget v2, p0, La/e/a/a;->a:I

    if-ge v1, v2, :cond_1

    .line 11
    iget-object v2, p0, La/e/a/a;->f:[I

    aget v2, v2, v0

    iget v3, p1, La/e/a/g;->b:I

    if-ne v2, v3, :cond_0

    .line 12
    iget-object p1, p0, La/e/a/a;->h:[F

    aget p1, p1, v0

    return p1

    .line 13
    :cond_0
    iget-object v2, p0, La/e/a/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 5

    .line 1
    iget v0, p0, La/e/a/a;->i:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    iget v2, p0, La/e/a/a;->a:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, La/e/a/a;->h:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 4
    iget-object v2, p0, La/e/a/a;->g:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, La/e/a/a;->i:I

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 2
    iget v3, p0, La/e/a/a;->a:I

    if-ge v2, v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/e/a/a;->h:[F

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/e/a/a;->c:La/e/a/c;

    iget-object v1, v1, La/e/a/c;->c:[La/e/a/g;

    iget-object v4, p0, La/e/a/a;->f:[I

    aget v4, v4, v0

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v3, p0, La/e/a/a;->g:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
