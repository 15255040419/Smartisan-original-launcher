.class public final enum Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
.super Ljava/lang/Enum;
.source "ChangeThemeHandler.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum Eaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

.field public static final enum SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const/4 v1, 0x0

    const-string v2, "SETTING"

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const/4 v2, 0x1

    const-string v3, "PHONE_BACK_COLOR"

    invoke-direct {v0, v3, v2}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Eaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const/4 v3, 0x2

    const-string v4, "FOUR_FINGER_LEFT"

    invoke-direct {v0, v4, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    new-instance v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const/4 v4, 0x3

    const-string v5, "FOUR_FINGER_RIGHT"

    invoke-direct {v0, v5, v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    .line 2
    sget-object v5, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->SETTING:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v5, v0, v1

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Eaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Faa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Gaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->$VALUES:[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    return-object p0
.end method

.method public static values()[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->$VALUES:[Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {v0}, [Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    return-object v0
.end method
