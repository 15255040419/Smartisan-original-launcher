.class public Lcom/smartisanos/launcher/sa;
.super Ljava/lang/Object;
.source "HardwareAdaptation.java"


# static fields
.field public static final A1:Lcom/smartisanos/launcher/ra;

.field public static final ATOLL:Lcom/smartisanos/launcher/ra;

.field public static final DARWIN:Lcom/smartisanos/launcher/ra;

.field public static final DELTA:Lcom/smartisanos/launcher/ra;

.field public static final DEVICES:[Lcom/smartisanos/launcher/ra;

.field public static final M1:Lcom/smartisanos/launcher/ra;

.field public static final Nh:Lcom/smartisanos/launcher/ra;

.field public static final OCEAN:Lcom/smartisanos/launcher/ra;

.field public static final ODIN:Lcom/smartisanos/launcher/ra;

.field public static final OSBORN:Lcom/smartisanos/launcher/ra;

.field public static final OSCAR:Lcom/smartisanos/launcher/ra;

.field public static final Oh:Lcom/smartisanos/launcher/ra;

.field public static final Ph:Lcom/smartisanos/launcher/ra;

.field public static final Qh:Lcom/smartisanos/launcher/ra;

.field private static final Rh:[Lcom/smartisanos/launcher/ra;

.field private static final Sh:[Lcom/smartisanos/launcher/ra;

.field public static final T1:Lcom/smartisanos/launcher/ra;

.field public static final T2:Lcom/smartisanos/launcher/ra;

.field public static final TRIDENT:Lcom/smartisanos/launcher/ra;

.field private static final Th:[Lcom/smartisanos/launcher/ra;

.field public static final U1:Lcom/smartisanos/launcher/ra;

.field public static final UNKNOWN:Lcom/smartisanos/launcher/ra;

.field private static final Uh:Ljava/util/ArrayList;

.field private static Vh:Lcom/smartisanos/launcher/ra;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    const-class v0, Lcom/smartisanos/launcher/sa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/sa;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const/16 v1, 0x30

    const-string v2, "T1"

    const-string v3, "msm8974"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->T1:Lcom/smartisanos/launcher/ra;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "T2"

    const-string v3, "msm8992"

    const/16 v4, 0x2e

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->T2:Lcom/smartisanos/launcher/ra;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "msm8996"

    const-string v3, "M1"

    invoke-direct {v0, v3, v2, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->M1:Lcom/smartisanos/launcher/ra;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v3, "M1_L"

    invoke-direct {v0, v3, v2, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->Nh:Lcom/smartisanos/launcher/ra;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "U1"

    const-string v3, "msm8916"

    const/16 v4, 0x34

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "U2"

    const-string v3, "mt6797"

    const/16 v4, 0x6e

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->Oh:Lcom/smartisanos/launcher/ra;

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "U2_PRO"

    const-string v3, "mt6797t"

    const/16 v4, 0x64

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->Ph:Lcom/smartisanos/launcher/ra;

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "A1"

    const-string v3, "msm8952"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->A1:Lcom/smartisanos/launcher/ra;

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "ODIN"

    const-string v3, "msm8953"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->ODIN:Lcom/smartisanos/launcher/ra;

    .line 11
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "OSCAR"

    const-string v3, "msm8953"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->OSCAR:Lcom/smartisanos/launcher/ra;

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "OSBORN"

    const-string v3, "sdm660"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->OSBORN:Lcom/smartisanos/launcher/ra;

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "OXFORD"

    const-string v3, "sdm636"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->Qh:Lcom/smartisanos/launcher/ra;

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "TRIDENT"

    const-string v3, "sdm845"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "OCEAN"

    const-string v3, "sdm710"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->OCEAN:Lcom/smartisanos/launcher/ra;

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "DELTA"

    const-string v3, "sm8150"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "ATOLL"

    const-string v3, "sm8150"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->ATOLL:Lcom/smartisanos/launcher/ra;

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "DARWIN"

    const-string v3, "kona"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->DARWIN:Lcom/smartisanos/launcher/ra;

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/ra;

    const-string v2, "UNKNOWN"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/ra;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/sa;->UNKNOWN:Lcom/smartisanos/launcher/ra;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/smartisanos/launcher/ra;

    .line 20
    sget-object v1, Lcom/smartisanos/launcher/sa;->T1:Lcom/smartisanos/launcher/ra;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v3, Lcom/smartisanos/launcher/sa;->T2:Lcom/smartisanos/launcher/ra;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    sget-object v5, Lcom/smartisanos/launcher/sa;->M1:Lcom/smartisanos/launcher/ra;

    const/4 v6, 0x2

    aput-object v5, v0, v6

    sget-object v7, Lcom/smartisanos/launcher/sa;->Nh:Lcom/smartisanos/launcher/ra;

    const/4 v8, 0x3

    aput-object v7, v0, v8

    sget-object v9, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    const/4 v10, 0x4

    aput-object v9, v0, v10

    sget-object v11, Lcom/smartisanos/launcher/sa;->Oh:Lcom/smartisanos/launcher/ra;

    const/4 v12, 0x5

    aput-object v11, v0, v12

    sget-object v13, Lcom/smartisanos/launcher/sa;->Ph:Lcom/smartisanos/launcher/ra;

    const/4 v14, 0x6

    aput-object v13, v0, v14

    sget-object v15, Lcom/smartisanos/launcher/sa;->A1:Lcom/smartisanos/launcher/ra;

    const/16 v16, 0x7

    aput-object v15, v0, v16

    sget-object v17, Lcom/smartisanos/launcher/sa;->ODIN:Lcom/smartisanos/launcher/ra;

    const/16 v18, 0x8

    aput-object v17, v0, v18

    sget-object v19, Lcom/smartisanos/launcher/sa;->OSCAR:Lcom/smartisanos/launcher/ra;

    const/16 v14, 0x9

    aput-object v19, v0, v14

    sget-object v21, Lcom/smartisanos/launcher/sa;->OSBORN:Lcom/smartisanos/launcher/ra;

    const/16 v22, 0xa

    aput-object v21, v0, v22

    sget-object v23, Lcom/smartisanos/launcher/sa;->Qh:Lcom/smartisanos/launcher/ra;

    const/16 v24, 0xb

    aput-object v23, v0, v24

    sget-object v25, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    const/16 v12, 0xc

    aput-object v25, v0, v12

    sget-object v25, Lcom/smartisanos/launcher/sa;->OCEAN:Lcom/smartisanos/launcher/ra;

    const/16 v27, 0xd

    aput-object v25, v0, v27

    sget-object v27, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    const/16 v28, 0xe

    aput-object v27, v0, v28

    sget-object v27, Lcom/smartisanos/launcher/sa;->UNKNOWN:Lcom/smartisanos/launcher/ra;

    const/16 v28, 0xf

    aput-object v27, v0, v28

    sput-object v0, Lcom/smartisanos/launcher/sa;->DEVICES:[Lcom/smartisanos/launcher/ra;

    new-array v0, v14, [Lcom/smartisanos/launcher/ra;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v9, v0, v10

    const/16 v26, 0x5

    aput-object v11, v0, v26

    const/16 v20, 0x6

    aput-object v13, v0, v20

    aput-object v15, v0, v16

    aput-object v17, v0, v18

    .line 21
    sput-object v0, Lcom/smartisanos/launcher/sa;->Rh:[Lcom/smartisanos/launcher/ra;

    new-array v0, v12, [Lcom/smartisanos/launcher/ra;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v9, v0, v10

    aput-object v11, v0, v26

    aput-object v13, v0, v20

    aput-object v15, v0, v16

    aput-object v17, v0, v18

    aput-object v19, v0, v14

    aput-object v21, v0, v22

    aput-object v23, v0, v24

    .line 22
    sput-object v0, Lcom/smartisanos/launcher/sa;->Sh:[Lcom/smartisanos/launcher/ra;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/smartisanos/launcher/ra;

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    aput-object v5, v0, v6

    aput-object v7, v0, v8

    aput-object v9, v0, v10

    const/4 v1, 0x5

    aput-object v11, v0, v1

    const/4 v1, 0x6

    aput-object v13, v0, v1

    aput-object v15, v0, v16

    aput-object v17, v0, v18

    aput-object v19, v0, v14

    aput-object v21, v0, v22

    aput-object v23, v0, v24

    aput-object v25, v0, v12

    .line 23
    sput-object v0, Lcom/smartisanos/launcher/sa;->Th:[Lcom/smartisanos/launcher/ra;

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/HardwareAdaptation$1;

    invoke-direct {v0}, Lcom/smartisanos/launcher/HardwareAdaptation$1;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/sa;->Uh:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/ra;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/sa;->Rh:[Lcom/smartisanos/launcher/ra;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static ob()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/sa;->Uh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static pb()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/sa;->DARWIN:Lcom/smartisanos/launcher/ra;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static qb()Lcom/smartisanos/launcher/ra;
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    if-nez v0, :cond_18

    .line 2
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msm8974"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/sa;->T1:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_0
    const-string v2, "msm8916"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_1
    const-string v2, "msm8992"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/sa;->T2:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_2
    const-string v2, "msm8996"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "colombo"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/sa;->Nh:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    .line 14
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/sa;->M1:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    .line 15
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/sa;->M1:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_5
    const-string v2, "msm8952"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/sa;->A1:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_6
    const-string v2, "msm8953"

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "odin"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/sa;->ODIN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_7
    const-string v0, "oscar"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/sa;->OSCAR:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    .line 24
    :cond_8
    sget-object v0, Lcom/smartisanos/launcher/sa;->ODIN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto/16 :goto_7

    :cond_9
    const-string v2, "sdm660"

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "osborn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_6

    :cond_a
    const-string v2, "sdm845"

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "trident"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_5

    :cond_b
    const-string v2, "sdm636"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "oxford"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_4

    :cond_c
    const-string v2, "sdm710"

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "sdm670"

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "ocean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_d
    const-string v2, "sm8150"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "delta"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_2

    .line 34
    :cond_e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "atoll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    const-string v2, "kona"

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "darwin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_0

    .line 38
    :cond_10
    sget-object v0, Lcom/smartisanos/launcher/sa;->UNKNOWN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 39
    :cond_11
    :goto_0
    sget-object v0, Lcom/smartisanos/launcher/sa;->DARWIN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 40
    :cond_12
    :goto_1
    sget-object v0, Lcom/smartisanos/launcher/sa;->ATOLL:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 41
    :cond_13
    :goto_2
    sget-object v0, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 42
    :cond_14
    :goto_3
    sget-object v0, Lcom/smartisanos/launcher/sa;->OCEAN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 43
    :cond_15
    :goto_4
    sget-object v0, Lcom/smartisanos/launcher/sa;->Qh:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 44
    :cond_16
    :goto_5
    sget-object v0, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    goto :goto_7

    .line 45
    :cond_17
    :goto_6
    sget-object v0, Lcom/smartisanos/launcher/sa;->OSBORN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    .line 46
    :cond_18
    :goto_7
    sget-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    if-nez v0, :cond_19

    .line 47
    sget-object v0, Lcom/smartisanos/launcher/sa;->UNKNOWN:Lcom/smartisanos/launcher/ra;

    sput-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    .line 48
    :cond_19
    sget-object v0, Lcom/smartisanos/launcher/sa;->Vh:Lcom/smartisanos/launcher/ra;

    return-object v0
.end method

.method public static rb()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/smartisanos/launcher/ra;->Mh:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    :goto_0
    return v0
.end method

.method public static sb()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/sa;->Sh:[Lcom/smartisanos/launcher/ra;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static tb()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/sa;->Th:[Lcom/smartisanos/launcher/ra;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ub()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/sa;->ATOLL:Lcom/smartisanos/launcher/ra;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
