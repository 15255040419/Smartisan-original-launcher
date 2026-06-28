.class public final enum Lcom/android/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 93
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v1, 0x0

    const-string v2, "NAME"

    invoke-direct {v0, v2, v1}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 94
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v2, 0x1

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 95
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v3, 0x2

    const-string v4, "EMAIL"

    invoke-direct {v0, v4, v3}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 96
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v4, 0x3

    const-string v5, "POSTAL_ADDRESS"

    invoke-direct {v0, v5, v4}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 97
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v5, 0x4

    const-string v6, "ORGANIZATION"

    invoke-direct {v0, v6, v5}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 98
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v6, 0x5

    const-string v7, "IM"

    invoke-direct {v0, v7, v6}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 99
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v7, 0x6

    const-string v8, "PHOTO"

    invoke-direct {v0, v8, v7}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 100
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/4 v8, 0x7

    const-string v9, "WEBSITE"

    invoke-direct {v0, v9, v8}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 101
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v9, 0x8

    const-string v10, "SIP"

    invoke-direct {v0, v10, v9}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 102
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v10, 0x9

    const-string v11, "NICKNAME"

    invoke-direct {v0, v11, v10}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 103
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v11, 0xa

    const-string v12, "NOTE"

    invoke-direct {v0, v12, v11}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 104
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v12, 0xb

    const-string v13, "BIRTHDAY"

    invoke-direct {v0, v13, v12}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 105
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v13, 0xc

    const-string v14, "ANNIVERSARY"

    invoke-direct {v0, v14, v13}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 106
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v14, 0xd

    const-string v15, "ANDROID_CUSTOM"

    invoke-direct {v0, v15, v14}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 92
    sget-object v15, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v15, v0, v1

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v1, v0, v14

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 92
    const-class v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public static values()[Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 92
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-virtual {v0}, [Lcom/android/vcard/VCardEntry$EntryLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method
